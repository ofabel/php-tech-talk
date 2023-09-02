<!-- @formatter:off --><?php
abstract class Animal
{
    public function doEat(): void { echo 'eating ...'; }
}

abstract class Bird extends Animal
{
    public function doFly(): void { echo 'flying ...'; }
}

class Eagle extends Bird { }

class Kiwi extends Bird { }
