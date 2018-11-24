import Foundation

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = getHead() else {
            return "Empty List"
        }
        
        return String(describing: head)
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        
        return "\(value) -> " + String(describing: next) + " "
    }
}
