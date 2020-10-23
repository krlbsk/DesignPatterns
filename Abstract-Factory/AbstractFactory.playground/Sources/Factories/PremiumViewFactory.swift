import Foundation

public struct PremiumViewFactory: ViewFactory {
    
    public init() { }
    
    public func createButton() -> Button {
        let button = PremiumButton(type: .system)
        button.setup()
        return button
    }
    
    public func createLabel() -> Label {
        let label = PremiumLabel()
        label.setup()
        return label
    }
}
