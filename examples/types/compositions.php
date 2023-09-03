<!-- @formatter:off --><?php
interface Eat { }
interface Walk { }
interface Fly { }

function reproduceAll(Eat|Walk|Fly $animal): Eat|Walk|Fly // union type
{
    return clone($animal);
}

function reproduceBirdsOnly(Eat&Walk&Fly $bird): Eat&Walk&Fly // intersection type
{
    return clone($bird);
}
