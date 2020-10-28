/// Component
public protocol Item: AnyObject {
    func display()
    func addItem(_ item: Item)
    func removeItem(_ item: Item)
    func getSubItem(at index: Int) -> Item?
}
