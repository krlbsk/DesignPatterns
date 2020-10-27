public class TaxCalculator: EarningsCalculator {
    private static let taxRate = 0.19
    
    public override func calculate() -> Double {
        super.calculate() * Self.taxRate
    }
}
