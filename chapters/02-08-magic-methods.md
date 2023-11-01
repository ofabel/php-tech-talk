## Magic Methods {.allowframebreaks}

Frequently used and reasonable:

__construct()

: The constructor method of the class.

__destruct()

: The destructor method of the class.

__clone()

: Called on the new object after a successful invocation of `clone`.

__sleep()

: Do some clen up before serialization with `serialize()`.

__wakeup()

: Do some reinitialization upon object a `unserialize()` call.

__serialize()

: Returns a serializable representation of the object.

__unserialize()

: Reinitialize the object using the results from `__serialize()`.

__invoke()

: Called when a script tries to call an object as a function.

__toString()

: Allows to decide how to react when it's treated like a string.

__set_state()

: Creates a new instance from the results of `var_export()`.

__debugInfo()

: Called when dumping an object using `var_dump()`.

\framebreak

Rarely used and questionable (under some circumstances):

__get()

: Used for reading data from inaccessible\footnotemark[1] properties.

__set()

: Called when writing data to inaccessible\footnotemark[1] properties.

__isset()

: Triggered by `isset()` or `empty()` on inaccessible\footnotemark[1] properties.

__unset()

: Invoked when `unset()` is used on inaccessible\footnotemark[1] properties.

__call()

: Triggered when calling inaccessible\footnotemark[1] methods in object context.

__callStatic()

: Triggered when calling inaccessible\footnotemark[1] methods in static context.

\footnotetext[1]{protected, private or undefined}

### Examples {.allowframebreaks}

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
