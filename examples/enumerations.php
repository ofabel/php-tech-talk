<!-- @formatter:off --><?php
enum Order
{
    case Ascending;
    case Descending;
}

enum Color: string
{
    case Red = '#ff0000';
    case Green = '#00ff00';
    case Blue = '#0000ff';
}
