## Fibers {.allowframebreaks}

* Since PHP 8.1
* Adds support for asynchronous function calls.
* In contrast to a generator, each fiber has its own call stack.
* Fibers can suspend their execution anywhere using `Fiber::suspend()`.
* The caller of a fiber can resume the execution from outside.
* It's possible to exchange values with a fiber using `suspend($value)` and `resume($value)`.

\framebreak

\scriptsize

:::::::::::::: {.columns align=top}
::: {.column width="55%" }

```php
!include`startLine=2, endLine=16` ./examples/fibers.php
```

:::
::: {.column width="45%"}

```php
!include`startLine=18` ./examples/fibers.php
```

:::
::::::::::::::
