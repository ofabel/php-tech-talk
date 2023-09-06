class Box {
    number = 0;

    constructor(number) {
        this.number = number;
    }
}

for (let i = 0; i < 100_000_000; i++) {
    let o = new Box(i);
}
