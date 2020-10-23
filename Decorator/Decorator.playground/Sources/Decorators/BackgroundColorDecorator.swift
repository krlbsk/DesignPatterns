import UIKit

public class BackgroundColorDecorator: UIView, ButtonDecorator {
    
    private let button: Button
    private let color: UIColor
    
    public init(
        button: Button,
        color: UIColor
    ) {
        self.button = button
        self.color = color
        super.init(frame: .zero)
        addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 20)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func tap() {
        button.tap()
        backgroundColor = color
    }
}
