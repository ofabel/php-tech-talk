<?php

class Box
{
    public readonly int $number;

    public function __construct(int $number)
    {
        $this->number = $number;
    }
}

for ($i = 0; $i < 100_000_000; $i++) {
    $o = new Box($i);
}
