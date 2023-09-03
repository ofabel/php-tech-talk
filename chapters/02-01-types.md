## Types {.allowframebreaks}

* PHP uses a nominal type system.
* Subtyping relation is checked at compile time.
* Verification of types is dynamically checked at run time.
* Types can be composed together to create more complex types.
* A type can be nullable by adding a question mark next to it.
* These types are
  built-in: `null`, `bool`, `int`, `float`, `string`, `array`, `object`, `resource`, `never`, `void`, `callable`, `true`, `false`, `self`, `parent`, `static`

\framebreak

```php
!include`startLine=2` ./examples/types/compiler-checks.php
```

\framebreak

\scriptsize

```php
!include`startLine=2` ./examples/types/runtime-checks.php
```

\framebreak

```php
!include`startLine=2` ./examples/types/compositions.php
```
