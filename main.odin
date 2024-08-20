package main

import "core:fmt"

Node :: struct {
    parent: ^Node,
    children: [dynamic]Node,
    value: i32,
}

Tree :: struct {
    head: ^Node,
}

main :: proc() {
    // tree = Tree{}
    // head = Node{nil, nil, 2} 
    fmt.println("Hellope!")
}
