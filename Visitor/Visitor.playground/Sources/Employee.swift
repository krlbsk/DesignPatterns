public protocol Employee {
    func accept(visitor: EmployeeVisitor)
}
