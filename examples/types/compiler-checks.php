<!-- @formatter:off --><?php // php --syntax-check compiler-checks.php
final class A { }

class B extends A { }

// $ php --syntax-check compiler-checks.php
//
// PHP Fatal error:  Class B cannot extend final class A on line 4
// Errors parsing compiler-checks.php
