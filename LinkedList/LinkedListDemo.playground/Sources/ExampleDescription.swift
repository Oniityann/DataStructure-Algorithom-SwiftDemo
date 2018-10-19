
public func example(of desc: String, handler: () -> Void) {
    print("--- Example of: \(desc)")
    handler()
    print()
}

