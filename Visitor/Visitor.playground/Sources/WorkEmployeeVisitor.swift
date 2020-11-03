public struct WorkEmployeeVisitor: EmployeeVisitor {
    public init() { }
    
    public func visitProgrammer(_ programmer: Programmer) {
        programmer.program()
    }
    
    public func visitProjectManager(_ projectManager: ProjectManager) {
        projectManager.manage()
    }
}
