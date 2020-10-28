/// Leaf
public class Task: Item {
    private let name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public func display() {
        print("Task: \(name)")
    }
    
    public func addItem(_ item: Item) { }
    public func removeItem(_ item: Item) { }
    public func getSubItem(at index: Int) -> Item? { nil }
}
