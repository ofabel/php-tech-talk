package main

type Box struct {
    number int
}

func main() {
	for i := 0; i < 100_000_000; i++ {
	    var _ = Box{i}
	}
}
