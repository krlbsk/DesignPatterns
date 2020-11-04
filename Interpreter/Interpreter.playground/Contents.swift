let add = AddExpression(
    expressionLeft: AddExpression(
        expressionLeft: TerminalExpression(value: "1"),
        expressionRight: TerminalExpression(value: "1")
    ),
    expressionRight: AddExpression(
        expressionLeft: TerminalExpression(value: "2"),
        expressionRight: TerminalExpression(value: "2")
    )
)

add.interpret("plus")
