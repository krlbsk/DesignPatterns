let employees: [Employee] = [
    Programmer(name: "John"),
    Programmer(name: "Jack"),
    ProjectManager(name: "Jake"),
    ProjectManager(name: "Scott")
]
let workVisitor = WorkEmployeeVisitor()
employees.forEach { $0.accept(visitor: workVisitor) }
