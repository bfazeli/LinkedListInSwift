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

running(example: "Pop") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before popping list: \(list)")
    
    if let val = list.pop() {
        print("Popped value: " + String(describing: val))
    }
    
    print("After popping the list: \(list)")
    
}

running(example: "Remove last") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before removing the last element in the list: \(list)")
    
    if let val = list.removeLast() {
        print("Last element removed was: " + String(describing: val))
    }
    
    print("After removing the last element in the list: \(list)")
}

running(example: "Removing at a particular index") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before removing element from the list: \(list)")
    
    let index = 2
    
    if let node = list.node(at: index), let val = list.remove(after: node) {
        print("Removed element after index: \(index), is \(val)")
    }
    
    print("After removing the element in the list: \(list)")
}
