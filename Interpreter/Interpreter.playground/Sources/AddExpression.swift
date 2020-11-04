public struct AddExpression: Expression {
    private let expressionLeft: Expression
    private let expressionRight: Expression
    
    public init(
        expressionLeft: Expression,
        expressionRight: Expression
    ) {
        self.expressionLeft = expressionLeft
        self.expressionRight = expressionRight
    }
    
    public func interpret(_ context: String) -> String {
        if context == "plus" {
            return String(
                expressionLeft.interpret(context).int + expressionRight.interpret(context).int
            )
        } else {
            return context
        }
    }
}
