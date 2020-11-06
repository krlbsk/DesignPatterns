let programmerEarningsCalculatorImpl = ProgrammerEarningsCalculator(hoursSpent: 170)

let programmerEarningsCalculator = EarningsCalculator(implementor: programmerEarningsCalculatorImpl)
programmerEarningsCalculator.calculate()

let programmerTaxCalculator = EarningsTaxCalculator(implementor: programmerEarningsCalculatorImpl)
programmerTaxCalculator.calculate()


let consultantEarningsCalculatorImpl = ConsultantEarningsCalculator(hoursSpent: 170)

let consultantEarningsCalculator = EarningsCalculator(implementor: consultantEarningsCalculatorImpl)
consultantEarningsCalculator.calculate()

let consultantTaxCalculator = EarningsTaxCalculator(implementor: consultantEarningsCalculatorImpl)
consultantTaxCalculator.calculate()
