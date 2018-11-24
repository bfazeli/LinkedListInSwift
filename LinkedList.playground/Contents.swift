import UIKit

var str = "Hello, playground"

running(example: "Creating and linking Nodes") {
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)
    
    node1.next = node2
    node2.next = node3
    
    print(node1)
}

running(example: "Push") {
    var linkedList = LinkedList<Int>()
    
    linkedList.push(3)
    linkedList.push(2)
    linkedList.push(1)
    
    print(linkedList)
}

running(example: "Append") {
    var linkedList = LinkedList<Int>()
    
    linkedList.append(1)
    linkedList.append(2)
    linkedList.append(3)
    
    print(linkedList)
}

running(example: "Inserting at a particular index") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before inserting: \(list)")
    
    list.insert(-1, after: list.node(at: 1)!)
    
    print("After inserting: \(list)")
}
