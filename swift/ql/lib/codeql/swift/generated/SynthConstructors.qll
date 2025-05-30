// generated by codegen/codegen.py, do not edit
/**
 * This module exports all modules providing `Element` subclasses.
 */

import codeql.swift.elements.internal.AvailabilityInfoConstructor
import codeql.swift.elements.internal.CommentConstructor
import codeql.swift.elements.internal.DbFileConstructor
import codeql.swift.elements.internal.DbLocationConstructor
import codeql.swift.elements.internal.DiagnosticsConstructor
import codeql.swift.elements.internal.KeyPathComponentConstructor
import codeql.swift.elements.internal.MacroRoleConstructor
import codeql.swift.elements.internal.OtherAvailabilitySpecConstructor
import codeql.swift.elements.internal.PlatformVersionAvailabilitySpecConstructor
import codeql.swift.elements.internal.UnspecifiedElementConstructor
import codeql.swift.elements.decl.internal.AccessorConstructor
import codeql.swift.elements.decl.internal.AssociatedTypeDeclConstructor
import codeql.swift.elements.decl.internal.CapturedDeclConstructor
import codeql.swift.elements.decl.internal.ClassDeclConstructor
import codeql.swift.elements.decl.internal.ConcreteVarDeclConstructor
import codeql.swift.elements.decl.internal.DeinitializerConstructor
import codeql.swift.elements.decl.internal.EnumCaseDeclConstructor
import codeql.swift.elements.decl.internal.EnumDeclConstructor
import codeql.swift.elements.decl.internal.EnumElementDeclConstructor
import codeql.swift.elements.decl.internal.ExtensionDeclConstructor
import codeql.swift.elements.decl.internal.GenericTypeParamDeclConstructor
import codeql.swift.elements.decl.internal.IfConfigDeclConstructor
import codeql.swift.elements.decl.internal.ImportDeclConstructor
import codeql.swift.elements.decl.internal.InfixOperatorDeclConstructor
import codeql.swift.elements.decl.internal.InitializerConstructor
import codeql.swift.elements.decl.internal.MacroDeclConstructor
import codeql.swift.elements.decl.internal.MissingMemberDeclConstructor
import codeql.swift.elements.decl.internal.ModuleDeclConstructor
import codeql.swift.elements.decl.internal.NamedFunctionConstructor
import codeql.swift.elements.decl.internal.OpaqueTypeDeclConstructor
import codeql.swift.elements.decl.internal.ParamDeclConstructor
import codeql.swift.elements.decl.internal.PatternBindingDeclConstructor
import codeql.swift.elements.decl.internal.PostfixOperatorDeclConstructor
import codeql.swift.elements.decl.internal.PoundDiagnosticDeclConstructor
import codeql.swift.elements.decl.internal.PrecedenceGroupDeclConstructor
import codeql.swift.elements.decl.internal.PrefixOperatorDeclConstructor
import codeql.swift.elements.decl.internal.ProtocolDeclConstructor
import codeql.swift.elements.decl.internal.StructDeclConstructor
import codeql.swift.elements.decl.internal.SubscriptDeclConstructor
import codeql.swift.elements.decl.internal.TopLevelCodeDeclConstructor
import codeql.swift.elements.decl.internal.TypeAliasDeclConstructor
import codeql.swift.elements.expr.internal.AbiSafeConversionExprConstructor
import codeql.swift.elements.expr.internal.ActorIsolationErasureExprConstructor
import codeql.swift.elements.expr.internal.AnyHashableErasureExprConstructor
import codeql.swift.elements.expr.internal.AppliedPropertyWrapperExprConstructor
import codeql.swift.elements.expr.internal.ArchetypeToSuperExprConstructor
import codeql.swift.elements.expr.internal.ArgumentConstructor
import codeql.swift.elements.expr.internal.ArrayExprConstructor
import codeql.swift.elements.expr.internal.ArrayToPointerExprConstructor
import codeql.swift.elements.expr.internal.AssignExprConstructor
import codeql.swift.elements.expr.internal.AutoClosureExprConstructor
import codeql.swift.elements.expr.internal.AwaitExprConstructor
import codeql.swift.elements.expr.internal.BinaryExprConstructor
import codeql.swift.elements.expr.internal.BindOptionalExprConstructor
import codeql.swift.elements.expr.internal.BooleanLiteralExprConstructor
import codeql.swift.elements.expr.internal.BorrowExprConstructor
import codeql.swift.elements.expr.internal.BridgeFromObjCExprConstructor
import codeql.swift.elements.expr.internal.BridgeToObjCExprConstructor
import codeql.swift.elements.expr.internal.CallExprConstructor
import codeql.swift.elements.expr.internal.CaptureListExprConstructor
import codeql.swift.elements.expr.internal.ClassMetatypeToObjectExprConstructor
import codeql.swift.elements.expr.internal.CoerceExprConstructor
import codeql.swift.elements.expr.internal.CollectionUpcastConversionExprConstructor
import codeql.swift.elements.expr.internal.ConditionalBridgeFromObjCExprConstructor
import codeql.swift.elements.expr.internal.ConditionalCheckedCastExprConstructor
import codeql.swift.elements.expr.internal.ConsumeExprConstructor
import codeql.swift.elements.expr.internal.CopyExprConstructor
import codeql.swift.elements.expr.internal.CovariantFunctionConversionExprConstructor
import codeql.swift.elements.expr.internal.CovariantReturnConversionExprConstructor
import codeql.swift.elements.expr.internal.CurrentContextIsolationExprConstructor
import codeql.swift.elements.expr.internal.DeclRefExprConstructor
import codeql.swift.elements.expr.internal.DefaultArgumentExprConstructor
import codeql.swift.elements.expr.internal.DerivedToBaseExprConstructor
import codeql.swift.elements.expr.internal.DestructureTupleExprConstructor
import codeql.swift.elements.expr.internal.DictionaryExprConstructor
import codeql.swift.elements.expr.internal.DifferentiableFunctionExprConstructor
import codeql.swift.elements.expr.internal.DifferentiableFunctionExtractOriginalExprConstructor
import codeql.swift.elements.expr.internal.DiscardAssignmentExprConstructor
import codeql.swift.elements.expr.internal.DotSelfExprConstructor
import codeql.swift.elements.expr.internal.DotSyntaxBaseIgnoredExprConstructor
import codeql.swift.elements.expr.internal.DotSyntaxCallExprConstructor
import codeql.swift.elements.expr.internal.DynamicMemberRefExprConstructor
import codeql.swift.elements.expr.internal.DynamicSubscriptExprConstructor
import codeql.swift.elements.expr.internal.DynamicTypeExprConstructor
import codeql.swift.elements.expr.internal.EnumIsCaseExprConstructor
import codeql.swift.elements.expr.internal.ErasureExprConstructor
import codeql.swift.elements.expr.internal.ErrorExprConstructor
import codeql.swift.elements.expr.internal.ExistentialMetatypeToObjectExprConstructor
import codeql.swift.elements.expr.internal.ExplicitClosureExprConstructor
import codeql.swift.elements.expr.internal.ExtractFunctionIsolationExprConstructor
import codeql.swift.elements.expr.internal.FloatLiteralExprConstructor
import codeql.swift.elements.expr.internal.ForceTryExprConstructor
import codeql.swift.elements.expr.internal.ForceValueExprConstructor
import codeql.swift.elements.expr.internal.ForcedCheckedCastExprConstructor
import codeql.swift.elements.expr.internal.ForeignObjectConversionExprConstructor
import codeql.swift.elements.expr.internal.FunctionConversionExprConstructor
import codeql.swift.elements.expr.internal.IfExprConstructor
import codeql.swift.elements.expr.internal.InOutExprConstructor
import codeql.swift.elements.expr.internal.InOutToPointerExprConstructor
import codeql.swift.elements.expr.internal.InitializerRefCallExprConstructor
import codeql.swift.elements.expr.internal.InjectIntoOptionalExprConstructor
import codeql.swift.elements.expr.internal.IntegerLiteralExprConstructor
import codeql.swift.elements.expr.internal.InterpolatedStringLiteralExprConstructor
import codeql.swift.elements.expr.internal.IsExprConstructor
import codeql.swift.elements.expr.internal.KeyPathApplicationExprConstructor
import codeql.swift.elements.expr.internal.KeyPathDotExprConstructor
import codeql.swift.elements.expr.internal.KeyPathExprConstructor
import codeql.swift.elements.expr.internal.LazyInitializationExprConstructor
import codeql.swift.elements.expr.internal.LinearFunctionExprConstructor
import codeql.swift.elements.expr.internal.LinearFunctionExtractOriginalExprConstructor
import codeql.swift.elements.expr.internal.LinearToDifferentiableFunctionExprConstructor
import codeql.swift.elements.expr.internal.LoadExprConstructor
import codeql.swift.elements.expr.internal.MagicIdentifierLiteralExprConstructor
import codeql.swift.elements.expr.internal.MakeTemporarilyEscapableExprConstructor
import codeql.swift.elements.expr.internal.MaterializePackExprConstructor
import codeql.swift.elements.expr.internal.MemberRefExprConstructor
import codeql.swift.elements.expr.internal.MetatypeConversionExprConstructor
import codeql.swift.elements.expr.internal.MethodLookupExprConstructor
import codeql.swift.elements.expr.internal.NilLiteralExprConstructor
import codeql.swift.elements.expr.internal.ObjCSelectorExprConstructor
import codeql.swift.elements.expr.internal.ObjectLiteralExprConstructor
import codeql.swift.elements.expr.internal.OneWayExprConstructor
import codeql.swift.elements.expr.internal.OpaqueValueExprConstructor
import codeql.swift.elements.expr.internal.OpenExistentialExprConstructor
import codeql.swift.elements.expr.internal.OptionalEvaluationExprConstructor
import codeql.swift.elements.expr.internal.OptionalTryExprConstructor
import codeql.swift.elements.expr.internal.OtherInitializerRefExprConstructor
import codeql.swift.elements.expr.internal.OverloadedDeclRefExprConstructor
import codeql.swift.elements.expr.internal.PackElementExprConstructor
import codeql.swift.elements.expr.internal.PackExpansionExprConstructor
import codeql.swift.elements.expr.internal.ParenExprConstructor
import codeql.swift.elements.expr.internal.PointerToPointerExprConstructor
import codeql.swift.elements.expr.internal.PostfixUnaryExprConstructor
import codeql.swift.elements.expr.internal.PrefixUnaryExprConstructor
import codeql.swift.elements.expr.internal.PropertyWrapperValuePlaceholderExprConstructor
import codeql.swift.elements.expr.internal.ProtocolMetatypeToObjectExprConstructor
import codeql.swift.elements.expr.internal.RebindSelfInInitializerExprConstructor
import codeql.swift.elements.expr.internal.RegexLiteralExprConstructor
import codeql.swift.elements.expr.internal.SequenceExprConstructor
import codeql.swift.elements.expr.internal.SingleValueStmtExprConstructor
import codeql.swift.elements.expr.internal.StringLiteralExprConstructor
import codeql.swift.elements.expr.internal.StringToPointerExprConstructor
import codeql.swift.elements.expr.internal.SubscriptExprConstructor
import codeql.swift.elements.expr.internal.SuperRefExprConstructor
import codeql.swift.elements.expr.internal.TapExprConstructor
import codeql.swift.elements.expr.internal.TryExprConstructor
import codeql.swift.elements.expr.internal.TupleElementExprConstructor
import codeql.swift.elements.expr.internal.TupleExprConstructor
import codeql.swift.elements.expr.internal.TypeExprConstructor
import codeql.swift.elements.expr.internal.TypeValueExprConstructor
import codeql.swift.elements.expr.internal.UnderlyingToOpaqueExprConstructor
import codeql.swift.elements.expr.internal.UnevaluatedInstanceExprConstructor
import codeql.swift.elements.expr.internal.UnreachableExprConstructor
import codeql.swift.elements.expr.internal.UnresolvedDeclRefExprConstructor
import codeql.swift.elements.expr.internal.UnresolvedDotExprConstructor
import codeql.swift.elements.expr.internal.UnresolvedMemberChainResultExprConstructor
import codeql.swift.elements.expr.internal.UnresolvedMemberExprConstructor
import codeql.swift.elements.expr.internal.UnresolvedPatternExprConstructor
import codeql.swift.elements.expr.internal.UnresolvedSpecializeExprConstructor
import codeql.swift.elements.expr.internal.UnresolvedTypeConversionExprConstructor
import codeql.swift.elements.expr.internal.UnsafeCastExprConstructor
import codeql.swift.elements.expr.internal.VarargExpansionExprConstructor
import codeql.swift.elements.pattern.internal.AnyPatternConstructor
import codeql.swift.elements.pattern.internal.BindingPatternConstructor
import codeql.swift.elements.pattern.internal.BoolPatternConstructor
import codeql.swift.elements.pattern.internal.EnumElementPatternConstructor
import codeql.swift.elements.pattern.internal.ExprPatternConstructor
import codeql.swift.elements.pattern.internal.IsPatternConstructor
import codeql.swift.elements.pattern.internal.NamedPatternConstructor
import codeql.swift.elements.pattern.internal.OptionalSomePatternConstructor
import codeql.swift.elements.pattern.internal.ParenPatternConstructor
import codeql.swift.elements.pattern.internal.TuplePatternConstructor
import codeql.swift.elements.pattern.internal.TypedPatternConstructor
import codeql.swift.elements.stmt.internal.BraceStmtConstructor
import codeql.swift.elements.stmt.internal.BreakStmtConstructor
import codeql.swift.elements.stmt.internal.CaseLabelItemConstructor
import codeql.swift.elements.stmt.internal.CaseStmtConstructor
import codeql.swift.elements.stmt.internal.ConditionElementConstructor
import codeql.swift.elements.stmt.internal.ContinueStmtConstructor
import codeql.swift.elements.stmt.internal.DeferStmtConstructor
import codeql.swift.elements.stmt.internal.DiscardStmtConstructor
import codeql.swift.elements.stmt.internal.DoCatchStmtConstructor
import codeql.swift.elements.stmt.internal.DoStmtConstructor
import codeql.swift.elements.stmt.internal.FailStmtConstructor
import codeql.swift.elements.stmt.internal.FallthroughStmtConstructor
import codeql.swift.elements.stmt.internal.ForEachStmtConstructor
import codeql.swift.elements.stmt.internal.GuardStmtConstructor
import codeql.swift.elements.stmt.internal.IfStmtConstructor
import codeql.swift.elements.stmt.internal.PoundAssertStmtConstructor
import codeql.swift.elements.stmt.internal.RepeatWhileStmtConstructor
import codeql.swift.elements.stmt.internal.ReturnStmtConstructor
import codeql.swift.elements.stmt.internal.StmtConditionConstructor
import codeql.swift.elements.stmt.internal.SwitchStmtConstructor
import codeql.swift.elements.stmt.internal.ThenStmtConstructor
import codeql.swift.elements.stmt.internal.ThrowStmtConstructor
import codeql.swift.elements.stmt.internal.WhileStmtConstructor
import codeql.swift.elements.stmt.internal.YieldStmtConstructor
import codeql.swift.elements.type.internal.ArraySliceTypeConstructor
import codeql.swift.elements.type.internal.BoundGenericClassTypeConstructor
import codeql.swift.elements.type.internal.BoundGenericEnumTypeConstructor
import codeql.swift.elements.type.internal.BoundGenericStructTypeConstructor
import codeql.swift.elements.type.internal.BuiltinBridgeObjectTypeConstructor
import codeql.swift.elements.type.internal.BuiltinDefaultActorStorageTypeConstructor
import codeql.swift.elements.type.internal.BuiltinExecutorTypeConstructor
import codeql.swift.elements.type.internal.BuiltinFixedArrayTypeConstructor
import codeql.swift.elements.type.internal.BuiltinFloatTypeConstructor
import codeql.swift.elements.type.internal.BuiltinIntegerLiteralTypeConstructor
import codeql.swift.elements.type.internal.BuiltinIntegerTypeConstructor
import codeql.swift.elements.type.internal.BuiltinJobTypeConstructor
import codeql.swift.elements.type.internal.BuiltinNativeObjectTypeConstructor
import codeql.swift.elements.type.internal.BuiltinRawPointerTypeConstructor
import codeql.swift.elements.type.internal.BuiltinRawUnsafeContinuationTypeConstructor
import codeql.swift.elements.type.internal.BuiltinUnsafeValueBufferTypeConstructor
import codeql.swift.elements.type.internal.BuiltinVectorTypeConstructor
import codeql.swift.elements.type.internal.ClassTypeConstructor
import codeql.swift.elements.type.internal.DependentMemberTypeConstructor
import codeql.swift.elements.type.internal.DictionaryTypeConstructor
import codeql.swift.elements.type.internal.DynamicSelfTypeConstructor
import codeql.swift.elements.type.internal.ElementArchetypeTypeConstructor
import codeql.swift.elements.type.internal.EnumTypeConstructor
import codeql.swift.elements.type.internal.ErrorTypeConstructor
import codeql.swift.elements.type.internal.ExistentialMetatypeTypeConstructor
import codeql.swift.elements.type.internal.ExistentialTypeConstructor
import codeql.swift.elements.type.internal.FunctionTypeConstructor
import codeql.swift.elements.type.internal.GenericFunctionTypeConstructor
import codeql.swift.elements.type.internal.GenericTypeParamTypeConstructor
import codeql.swift.elements.type.internal.InOutTypeConstructor
import codeql.swift.elements.type.internal.IntegerTypeConstructor
import codeql.swift.elements.type.internal.LValueTypeConstructor
import codeql.swift.elements.type.internal.MetatypeTypeConstructor
import codeql.swift.elements.type.internal.ModuleTypeConstructor
import codeql.swift.elements.type.internal.OpaqueTypeArchetypeTypeConstructor
import codeql.swift.elements.type.internal.OpenedArchetypeTypeConstructor
import codeql.swift.elements.type.internal.OptionalTypeConstructor
import codeql.swift.elements.type.internal.PackArchetypeTypeConstructor
import codeql.swift.elements.type.internal.PackElementTypeConstructor
import codeql.swift.elements.type.internal.PackExpansionTypeConstructor
import codeql.swift.elements.type.internal.PackTypeConstructor
import codeql.swift.elements.type.internal.ParameterizedProtocolTypeConstructor
import codeql.swift.elements.type.internal.ParenTypeConstructor
import codeql.swift.elements.type.internal.PrimaryArchetypeTypeConstructor
import codeql.swift.elements.type.internal.ProtocolCompositionTypeConstructor
import codeql.swift.elements.type.internal.ProtocolTypeConstructor
import codeql.swift.elements.type.internal.StructTypeConstructor
import codeql.swift.elements.type.internal.TupleTypeConstructor
import codeql.swift.elements.type.internal.TypeAliasTypeConstructor
import codeql.swift.elements.type.internal.TypeReprConstructor
import codeql.swift.elements.type.internal.UnboundGenericTypeConstructor
import codeql.swift.elements.type.internal.UnmanagedStorageTypeConstructor
import codeql.swift.elements.type.internal.UnownedStorageTypeConstructor
import codeql.swift.elements.type.internal.UnresolvedTypeConstructor
import codeql.swift.elements.type.internal.VariadicSequenceTypeConstructor
import codeql.swift.elements.type.internal.WeakStorageTypeConstructor
