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
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func tap() {
        button.tap()
        backgroundColor = color
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        button.frame = bounds
    }
}
