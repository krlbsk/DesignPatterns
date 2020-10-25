import UIKit

extension UIButton: ErrorObserver {
    public func markAsError() {
        setTitleColor(.red, for: .normal)
        setTitle("Try again", for: .normal)
    }
}
