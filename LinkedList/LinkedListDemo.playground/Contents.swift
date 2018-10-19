
example(of: "Nodes") {
    let node1 = ListNode(value: 1)
    let node2 = ListNode(value: 2)
    let node3 = ListNode(value: 3)
    
    node1.next = node2
    node2.next = node3
    
    print(node1)
}
