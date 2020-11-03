public struct Programmer: Employee {
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public func accept(visitor: EmployeeVisitor) {
        visitor.visitProgrammer(self)
    }
    
    public func program() {
        print("\(name) clicks clicks clicks")
    }
}
