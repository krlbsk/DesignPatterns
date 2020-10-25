import UIKit

public class PremiumLabel: UILabel, Label {
    
    public init() { }
    
    public func setup() {
        textColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        font = UIFont.italicSystemFont(ofSize: 19)
        shadowColor = .black
        shadowOffset = CGSize(width: 2, height: 2)
    }
}
