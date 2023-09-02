<!-- @formatter:off --><?php
namespace foo\bar;

class FooBar {
    private readonly string $bar;

    public function __construct(
        string $bar
    ) {
        $this->bar = $bar;
    }

    public function __destruct() {}
}
