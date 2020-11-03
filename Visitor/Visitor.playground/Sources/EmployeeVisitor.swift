public protocol EmployeeVisitor {
    func visitProgrammer(_ programmer: Programmer)
    func visitProjectManager(_ projectManager: ProjectManager)
}
