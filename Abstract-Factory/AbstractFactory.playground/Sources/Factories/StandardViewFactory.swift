import Foundation

public struct StandardViewFactory: ViewFactory {
    
    public init() { }
    
    public func createButton() -> Button {
        let button = StandardButton(type: .system)
        button.setup()
        return button
    }
    
    public func createLabel() -> Label {
        let label = StandardLabel()
        label.setup()
        return label
    }
}
