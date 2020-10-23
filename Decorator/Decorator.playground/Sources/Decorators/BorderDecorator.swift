import UIKit

public class BorderDecorator: UIView, ButtonDecorator {
    
    private let button: Button
    private let borderWidth: CGFloat
    private let borderColor: UIColor
    
    public init(
        button: Button,
        borderWidth: CGFloat,
        borderColor: UIColor
    ) {
        self.button = button
        self.borderWidth = borderWidth
        self.borderColor = borderColor
        super.init(frame: .zero)
        addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 20)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func tap() {
        button.tap()
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
}
