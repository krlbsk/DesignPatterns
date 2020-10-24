public struct MoneyViewModel {
    private let calculator: MoneyCalculator
    
    public init(calculator: MoneyCalculator) {
        self.calculator = calculator
    }
    
    public func calculateMoneyPerMonth() -> Double {
        calculator.moneyPerMonth()
    }
}
