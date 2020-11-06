public class EarningsCalculator {
    private let implementor: EarningsCalculatorImpl
    
    public init(implementor: EarningsCalculatorImpl) {
        self.implementor = implementor
    }
    
    public func calculate() -> Double {
        implementor.moneyPerMonth()
    }
}
