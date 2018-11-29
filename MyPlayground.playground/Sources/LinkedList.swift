import Foundation

public struct LinkedList<Value> {
    private var head: Node<Value>?
    private var tail: Node<Value>?
    private var count: Int
    
    public init(){
        count = 0
    }
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public func getHead() -> Node<Value>? {
        return head
    }
    
    public func getTail() -> Node<Value>? {
        return tail
    }
    
    public func getCount() -> Int {
        return count
    }
    
    public mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
        
        count += 1
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
        
        count += 1
    }
    
    @discardableResult
    public mutating func insert(_ value: Value, after node: Node<Value>) -> Node<Value> {
        
        // If the value to be inserted is after the tail, simply append to eol and return tail
        guard tail !== node else {
            append(value)
            return tail!
        }
        
        // Otherwise go ahead and create the node and set it as the next node of the specified node and return it
        node.next = Node(value: value, next: node.next)
        count += 1
        
        return node.next!
    }
    
    // Function to get the node to be inserted after
    public func node(at index: Int) -> Node<Value>? {
        
        var currentIndex = 0
        var currentNode = head
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    // MARK: Removable methods
    
    @discardableResult
    public mutating func pop() -> Value? {
        // Removes the node at head after execution of current scope.
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        
        return head?.value
    }
}
