public class ListNode<Value> {
    public var value: Value
    public var next: ListNode?
    
    public init(value: Value, next: ListNode? = nil) {
        self.value = value
        self.next = next
    }
}

extension ListNode: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}
