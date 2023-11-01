<?php

class Box
{
    public $number;

    public function __construct($number)
    {
        $this->number = $number;
    }
}

for ($i = 0; $i < 100000000; $i++) { // 100_000_000
    $o = new Box($i);
}
