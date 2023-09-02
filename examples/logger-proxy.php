<!-- @formatter:off --><?php
class LoggerProxy {
    private object $target;

    public function __construct(object $target) {
        $this->target = $target;
    }

    public function __call(string $name, array $arguments): mixed {
        echo 'invoking ' . $this->target::class . '::' . $name;

        return $this->target->$name(...$arguments);
    }
}
