public class ConsultantJobEarningsCalculator: JobEarningsCalculatorImpl {
    private static let dolarsPerHour = 150
    private static let avarageCommutingCostPerMonthInDolars = 500
    
    private let hoursSpent: Double
    
    public init(hoursSpent: Double) {
        self.hoursSpent = hoursSpent
    }
    
    public func moneyPerMonth() -> Double {
        hoursSpent
            * Double(Self.dolarsPerHour)
            - Double(Self.avarageCommutingCostPerMonthInDolars)
    }
}
