public class ProgrammerEarningsCalculator: EarningsCalculatorImpl {
    private static let dolarsPerHour = 100
    
    private let hoursSpent: Double
    
    public init(hoursSpent: Double) {
        self.hoursSpent = hoursSpent
    }
    
    public func moneyPerMonth() -> Double {
        hoursSpent * Double(Self.dolarsPerHour)
    }
}
