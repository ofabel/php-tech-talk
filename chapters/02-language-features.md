# Language Features

## Classes {.allowframebreaks}

:::::::::::::: {.columns align=center}
::: {.column width="45%" }

* Introduced in PHP 5
* Support for namespaces
* Support for interfaces
* Support for single inheritance
* Support for `final`
* Optional destructor method
* Visibility modifiers
* Overloading like JavaScript
* Support for abstractions
* Static properties and methods
* Late static binding
* Magic methods

:::
::: {.column width="55%"}

```php
!include`startLine=2` ./examples/classes/example.php
```

:::
::::::::::::::

\framebreak

```php
!include`startLine=2` ./examples/classes/animals.php
```

\framebreak

```php
!include`startLine=2` ./examples/classes/usage.php
```

### Traits

```php
!include`startLine=2` ./examples/traits.php
```

### Magic Methods {.allowframebreaks}

Methods starting with `__` are reserved. The following methods are considered magical.\vspace{1ex}

:::::::::::::: {.columns .onlytextwidth }
::: {.column width="50%" }

Frequently used and reasonable:

* `__construct()`
* `__destruct()`
* `__clone()`
* `__sleep()`
* `__wakeup()`
* `__serialize()`
* `__unserialize()`
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
* `__invoke()`

:::
::::::::::::::

\framebreak

```php
!include`startLine=2` ./examples/logger-proxy.php
```
