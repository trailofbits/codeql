// Definitions of Kiwi are not compatible - they have different vector sizes
struct Kiwi {
  int __attribute__ ((vector_size (8))) kiwi_x;
};

// Definitions of Lemon are not compatible - the vectors have different base types
struct Lemon {
  signed int __attribute__ ((vector_size (16))) lemon_x;
};
// semmle-extractor-options: -std=c99 --clang --gnu_version 40700
