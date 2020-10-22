import UIKit

public class AttributedStringBuilderImpl: AttributedStringBuilder {
    public var result: NSAttributedString { workingResult }
    
    private var workingResult: NSMutableAttributedString
    
    public init(text: String) {
        workingResult = NSMutableAttributedString(string: text)
    }
    
    public func setFont(_ font: UIFont) {
        addAttributeForContent(.font, value: font)
    }
    
    public func setColor(_ color: UIColor) {
        addAttributeForContent(.foregroundColor, value: color)
    }
    
    public func applyShadow(radius: CGFloat, color: UIColor) {
        let shadow = NSShadow()
        shadow.shadowColor = color
        shadow.shadowBlurRadius = radius
        addAttributeForContent(.shadow, value: shadow)
    }
    
    private func addAttributeForContent(
        _ name: NSAttributedString.Key,
        value: Any
    ) {
        workingResult.addAttribute(
            name,
            value: value,
            range: NSRange(
                location: 0,
                length: workingResult.string.count
            )
        )
    }
}
