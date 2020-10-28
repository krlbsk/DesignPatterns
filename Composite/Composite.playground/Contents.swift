let project: Item = Project(name: "Day")
project.addItem(Task(name: "Wake up"))
project.addItem(Task(name: "Eat"))
project.addItem(Task(name: "Sleep"))

let task: Item = Task(name: "Master Swift")

let items = [project, task]
items.forEach { $0.display() }
