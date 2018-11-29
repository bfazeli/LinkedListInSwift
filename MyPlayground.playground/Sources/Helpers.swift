import Foundation

public func running(example description: String, action: () -> Void) {
    print("---Running \(description)---")
    action()
    print()
}
