import UIKit

public protocol AttributedStringBuilder {
    var result: NSAttributedString { get }
    
    func setFont(_ font: UIFont)
    func setColor(_ color: UIColor)
    func applyShadow(radius: CGFloat, color: UIColor)
}
