class Box:
    number = 0

    def __init__(self, number):
        self.number = number

for i in range(0, 100_000_000):
    o = Box(i)
