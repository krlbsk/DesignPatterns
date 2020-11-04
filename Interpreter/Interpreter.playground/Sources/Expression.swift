public protocol Expression {
    func interpret(_ context: String) -> String
}
