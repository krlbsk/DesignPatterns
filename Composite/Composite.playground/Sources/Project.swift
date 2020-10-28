/// Composite
public class Project: Item {
    private let name: String
    private var items = [Item]()
    
    public init(name: String) {
        self.name = name
    }
    
    public func display() {
        print("Project: \(name)")
        items.forEach {
            $0.display()
        }
    }
    
    public func addItem(_ item: Item) {
        items.append(item)
    }
    
    public func removeItem(_ item: Item) {
        if let index = items.firstIndex(where: { $0 === item }) {
            items.remove(at: index)
        }
    }
    
    public func getSubItem(at index: Int) -> Item? {
        guard index < items.count else { return nil }
        return items[index]
    }
}
