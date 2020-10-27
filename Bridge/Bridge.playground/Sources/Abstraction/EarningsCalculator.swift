public class EarningsCalculator {
    private let implementor: JobEarningsCalculatorImpl
    
    public init(implementor: JobEarningsCalculatorImpl) {
        self.implementor = implementor
    }
    
    public func calculate() -> Double {
        implementor.moneyPerMonth()
    }
}
