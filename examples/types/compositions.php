<!-- @formatter:off --><?php
interface Eat { }
interface Walk { }
interface Fly { }

function reproduceAll(Eat|Walk|Fly $animal): Eat|Walk|Fly
{
    return clone($animal);
}

function reproduceBirdsOnly(Eat&Walk&Fly $bird): Eat&Walk&Fly
{
    return clone($bird);
}
