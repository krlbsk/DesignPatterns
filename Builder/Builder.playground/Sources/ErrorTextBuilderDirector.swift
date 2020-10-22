import UIKit

public class ErrorTextBuilderDirector {
    
    private let builder: AttributedStringBuilder
    
    public init(builder: AttributedStringBuilder) {
        self.builder = builder
    }
    
    public func construct() -> NSAttributedString {
        builder.setFont(UIFont.systemFont(ofSize: 20))
        builder.setColor(.red)
        builder.applyShadow(radius: 5, color: .black)
        return builder.result
    }
}
