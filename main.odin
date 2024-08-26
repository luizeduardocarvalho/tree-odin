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

add_child :: proc(node: ^Node, value: i32) { 
    parentNode := node^
    newNode := Node {&parentNode, nil, value}
    append(&node.children, newNode)
}

main :: proc() {
    tree := Tree{}
    head := Node{nil, nil, 2}
    tree.head = &head

    add_child(&head, 4)

    fmt.println(&tree.head.children) 
}
