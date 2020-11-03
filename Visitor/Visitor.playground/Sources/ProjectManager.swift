public struct ProjectManager: Employee {
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public func accept(visitor: EmployeeVisitor) {
        visitor.visitProjectManager(self)
    }
    
    public func manage() {
        print("\(name) said to do this and that")
    }
}
