import Foundation

public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init(){}
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    public mutating func append(_ value: Value) {
        // If list is empty just call push
        guard !isEmpty else {
            push(value)
            return
        }

        // Create a new node and assign it to the next Node of the current tail, i.e. nil
        tail!.next = Node(value: value)

        // Reassign tail to the new node added to the end of the list
        tail = tail!.next
    }
}
