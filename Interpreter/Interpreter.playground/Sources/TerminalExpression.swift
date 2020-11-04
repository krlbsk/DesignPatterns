public struct TerminalExpression: Expression {
    private let value: String
    
    public init(value: String) {
        self.value = value
    }
    
    public func interpret(_ context: String) -> String {
        value
    }
}
