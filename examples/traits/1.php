<!-- @formatter:off --><?php
trait Eat {
    public function doEat(): void { echo 'eating ...'; }
}

trait Fly {
    public function doFly(): void { echo 'flying ...'; }
}

class Eagle { use Eat, Fly; }

class Kiwi { use Eat; }
