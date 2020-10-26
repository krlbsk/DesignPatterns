public class MoneyCalculator {
    private let hoursSpent: Double
    
    public init(hoursSpent: Double) {
        self.hoursSpent = hoursSpent
    }
    
    public func moneyPerMonth() -> Double {
        hoursSpent
            * getDolarsPerHour()
            - getAdditionalCosts()
    }
    
    public func getDolarsPerHour() -> Double {
        fatalError("Must be implemented in subclass")
    }
    
    public func getAdditionalCosts() -> Double {
        fatalError("Must be implemented in subclass")
    }
}
