public struct Stack<Element> {
    
    private var elements: [Element] = []
    
    public init() { }
    
    public init(_ elements: [Element]) {
        self.elements = elements
    }
    
    public mutating func push(_ element: Element) {
        elements.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        return elements.popLast()
    }
    
    public func peek() -> Element? {
        return elements.last
    }
    
    public var isEmpty: Bool {
        return peek() == nil
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        let topDivider = "----top----\n"
        let bottomDivider = "\n-----------"
        
        let stackElements = elements
            .map { "\($0)" }
            .reversed()
            .joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        self.elements = elements
    }
}


