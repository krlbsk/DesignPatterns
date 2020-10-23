import UIKit

extension UIButton: Button {
    public func tap() {
        setTitle("Tapped", for: .normal)
    }
}
