## Magic Methods {.allowframebreaks}

Methods starting with `__` are reserved. The following methods are considered magical.\vspace{2ex}

:::::::::::::: {.columns .onlytextwidth}
::: {.column width="50%"}

Frequently used and reasonable:

* `__construct()`
* `__destruct()`
* `__clone()`
* `__sleep()`
* `__wakeup()`
* `__serialize()`
* `__unserialize()`
* `__invoke()`
* `__toString()`
* `__set_state()`
* `__debugInfo()`

:::
::: {.column width="50%"}

Rarely used and questionable:

* `__get()`
* `__set()`
* `__isset()`
* `__unset()`
* `__call()`
* `__callStatic()`

:::
::::::::::::::

\framebreak

```php
!include`startLine=2` ./examples/magic-methods/logger-proxy.php
```

\framebreak

:::::::::::::: {.columns}
::: {.column width="60%"}

\scriptsize

```php
!include`startLine=2` ./examples/magic-methods/invoke.php
```

:::
::: {.column width="40%"}

\scriptsize

```php
!include`startLine=2` ./examples/magic-methods/invoke-usage.php
```

:::
::::::::::::::
