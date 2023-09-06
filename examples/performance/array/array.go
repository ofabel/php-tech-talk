package main

import (
	"container/list"
)

func main() {
	arr := list.New()

	for i := 0; i < 100_000_000; i++ {
	    arr.PushBack(i)
	}
}
