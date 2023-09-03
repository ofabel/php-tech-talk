## Variables {.allowframebreaks}

* Variables are always prefixed with a `$` dollar sign.
* Variable names are case-sensitive.
* Valid variable names and other labels in PHP follow the same rule:
    1. Starts with a letter or underscore.
    2. Followed by any number of letters, numbers, or underscores.
* Variables can be assigned by value or by reference.
* Type hints for variables is only possible for class properties.
* The `unset` function destroys a previously defined variable.
* The `isset` function checks if a variable contains a value different from `null`.

\framebreak

```php
!include`startLine=2` ./examples/variables/assign.php
```
