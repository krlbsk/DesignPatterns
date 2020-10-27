let programmingJobEarningsCalculator = EarningsCalculator(
    implementor: ProgrammingJobEarningsCalculator(hoursSpent: 170)
)
programmingJobEarningsCalculator.calculate()

let programmingJobTaxCalculator = TaxCalculator(
    implementor: ProgrammingJobEarningsCalculator(hoursSpent: 170)
)
programmingJobTaxCalculator.calculate()
