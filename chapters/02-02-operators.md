## Operators {.allowframebreaks}

* Arithmetic `+`, `-`, `*`, `/`, `%`, `**` (power), `--`, `++`
* Bitwise `&`, `|`, `^`, `~`, `<<`, `>>`
* Assignment `=`, `.=`, `??=`, `+=`, `-=`, `*=`, `/=`, `%=`, `&=`, `|=`, `^=`, `<<=`, `>>=`
* Comparison `==`, `===`, `!=`, `<>`, `!==`, `<`, `>`, `<=`, `>=`, `<=>`
* Logical `and`, `or`, `xor`, `!`, `&&`, `||`
* Array `+`, `==`, `===`, `!=`, `<>`, `!==`
* Check for equality `==`
* Type safe equality (or identity) check `===`
* Strings can be checked for equality using `==` and `===`
* Ternary operator `$condition ? $a : $b` and `$a ?: $b`
* Null coalescing operator `$a ?? $b`
* Nullsafe operator `$a?->method()`

\framebreak

:::::::::::::: {.columns}
::: {.column width="29.333%"}

```php
!include`startLine=2` ./examples/operators/trueish-falseish.php
```

:::
::: {.column width="42.333%"}

```php
!include`startLine=2` ./examples/operators/equality.php
```

:::
::: {.column width="28.333%"}

```php
!include`startLine=2` ./examples/operators/coalescing.php
```

:::
::::::::::::::
