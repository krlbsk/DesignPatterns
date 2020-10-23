import UIKit

public class StandardButton: UIButton, Button {
    public func setup() {
        setTitleColor(.blue, for: .normal)
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
    }
}
