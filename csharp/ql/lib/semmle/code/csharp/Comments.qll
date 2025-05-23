/**
 * Provides classes representing comments.
 *
 * Comments are organized into `CommentBlock`s, consisting
 * of one or more `CommentLine`s.
 */

import Element
import Location

private Location unmapLoc(Location l) {
  result.(SourceLocation).getMappedLocation() = l
  or
  not exists(result.(SourceLocation).getMappedLocation()) and
  result = l
}

/**
 * A single line of comment.
 *
 * Either a single line comment (`SinglelineComment`), an XML comment (`XmlCommentLine`),
 * or a line in a multi-line comment (`MultilineComment`).
 */
class CommentLine extends @commentline {
  /** Gets a textual representation of this comment line. */
  string toString() { none() }

  /** Gets the location of this comment line. */
  Location getLocation() { commentline_location(this, unmapLoc(result)) }

  /** Gets the containing comment block. */
  CommentBlock getParent() { result.getAChild() = this }

  /** Gets the text in the comment, trimmed to remove comment markers and leading and trailing whitespace. */
  string getText() { commentline(this, _, result, _) }

  /** Gets the raw text of the comment, including the comment markers. */
  string getRawText() { commentline(this, _, _, result) }
}

/**
 * A single-line comment, for example line 1 in
 *
 * ```csharp
 * // This method returns the successor of its argument
 * public int Succ(int x) => x + 1;
 * ```
 */
class SinglelineComment extends CommentLine, @singlelinecomment {
  override string toString() { result = "// ..." }
}

/**
 * A line of comment in a multiline style, for example each of the
 * lines in
 *
 * ```csharp
 * /* This is
 *    a comment * /
 * ```
 */
class MultilineComment extends CommentLine, @multilinecomment {
  override string toString() { result = "/* ... */" }
}

/**
 * A line of XML documentation comment, for example each of the
 * lines in
 *
 * ```csharp
 * /// <summary>
 * ///   This method ...
 * /// </summary>
 * ```
 */
class XmlCommentLine extends CommentLine, @xmldoccomment {
  override string toString() { result = "/// ..." }

  private string xmlAttributeRegex() {
    result = "(" + this.xmlIdentifierRegex() + ")(?:\\s*=\\s*[\"']([^\"']*)[\"'])"
  }

  private string xmlIdentifierRegex() { result = "\\w+" }

  private string xmlTagOpenRegex() { result = "<\\s*" + this.xmlIdentifierRegex() }

  private string xmlTagIntroRegex() {
    result = this.xmlTagOpenRegex() + "(?:\\s*" + this.xmlAttributeRegex() + ")*"
  }

  private string xmlTagCloseRegex() { result = "</\\s*" + this.xmlIdentifierRegex() + "\\s*>" }

  /** Gets the text inside the XML element at character offset `offset`. */
  private string getElement(int offset) {
    result = this.getText().regexpFind(this.xmlTagIntroRegex(), _, offset)
  }

  /** Gets the name of the opening tag at offset `offset`. */
  string getOpenTag(int offset) {
    exists(int offset1, int offset2 |
      result = this.getElement(offset1).regexpFind(this.xmlIdentifierRegex(), 0, offset2) and
      offset = offset1 + offset2
    )
  }

  /** Gets the name of the closing tag at offset `offset`. */
  string getCloseTag(int offset) {
    exists(int offset1, int offset2 |
      result =
        this.getText()
            .regexpFind(this.xmlTagCloseRegex(), _, offset1)
            .regexpFind(this.xmlIdentifierRegex(), 0, offset2) and
      offset = offset1 + offset2
    )
  }

  /** Gets the name of the empty tag at offset `offset`. */
  string getEmptyTag(int offset) {
    exists(int offset1, int offset2 |
      (
        result =
          this.getText()
              .regexpFind(this.xmlTagIntroRegex() + "\\s*/>", _, offset1)
              .regexpFind(this.xmlIdentifierRegex(), 0, offset2) or
        result =
          this.getText()
              .regexpFind(this.xmlTagIntroRegex() + "\\s*>\\s*</" + this.xmlIdentifierRegex() +
                  "\\s*>", _, offset1)
              .regexpFind(this.xmlIdentifierRegex(), 0, offset2)
      ) and
      offset = offset1 + offset2
    )
  }

  /**
   * Gets the XML attribute value for an XML element,
   * for a given XML attribute name `key` and element offset `offset`.
   */
  string getAttribute(string element, string key, int offset) {
    exists(int offset1, int offset2, string elt, string pair | elt = this.getElement(offset1) |
      element = elt.regexpFind(this.xmlIdentifierRegex(), 0, offset2) and
      offset = offset1 + offset2 and
      pair = elt.regexpFind(this.xmlAttributeRegex(), _, _) and
      key = pair.regexpCapture(this.xmlAttributeRegex(), 1) and
      result = pair.regexpCapture(this.xmlAttributeRegex(), 2)
    )
  }

  /** Holds if the XML element at the given offset is not empty. */
  predicate hasBody(string element, int offset) {
    element = this.getOpenTag(offset) and not element = this.getEmptyTag(offset)
  }
}

/**
 * A collection of adjacent comment lines, for example
 *
 * ```csharp
 * /// <summary>
 * /// Represents a named tuple.
 * /// </summary>
 * ```
 */
class CommentBlock extends @commentblock {
  /** Gets a textual representation of this comment block. */
  string toString() { result = this.getChild(0).toString() }

  /** Gets the location of this comment block */
  Location getLocation() { commentblock_location(this, unmapLoc(result)) }

  /** Gets the number of lines in this comment block. */
  int getNumLines() { result = count(this.getAChild()) }

  /** Gets the `c`th child of this comment block (numbered from 0). */
  CommentLine getChild(int c) { commentblock_child(this, result, c) }

  /** Gets a comment line in this comment block. */
  CommentLine getAChild() { commentblock_child(this, result, _) }

  /** Gets the `Element` that contains this comment block, if any. */
  Element getParent() { commentblock_binding(this, result, 0) }

  /** Gets the `Element` that this comment block most probably refers to. */
  Element getElement() { commentblock_binding(this, result, 1) }

  /** Gets the `Element` before this comment block, if any. */
  Element getBefore() { commentblock_binding(this, result, 2) }

  /** Gets the `Element` after this comment, if any. */
  Element getAfter() { commentblock_binding(this, result, 3) }

  /**
   * Gets an `Element` possibly associated with this comment.
   * This is a superset of `getElement()`.
   */
  Element getAnElement() { commentblock_binding(this, result, _) }

  /** Gets a line of text in this comment block. */
  string getALine() { result = this.getAChild().getText() }

  /** Holds if the comment has no associated `Element`. */
  predicate isOrphan() { not exists(this.getElement()) }

  /** Holds if this block consists entirely of XML comments. */
  predicate isXmlCommentBlock() {
    forall(CommentLine l | l = this.getAChild() | l instanceof XmlCommentLine)
  }

  /** Gets a `CommentLine` containing text. */
  CommentLine getANonEmptyLine() { result = this.getAChild() and result.getText().length() != 0 }

  /** Gets a `CommentLine` that might contain code. */
  CommentLine getAProbableCodeLine() {
    // Logic taken verbatim from Java query CommentedCode.qll
    result = this.getAChild() and
    exists(string trimmed | trimmed = result.getText().regexpReplaceAll("\\s*//.*$", "") |
      trimmed.matches("%;") or trimmed.matches("%{") or trimmed.matches("%}")
    )
  }
}
