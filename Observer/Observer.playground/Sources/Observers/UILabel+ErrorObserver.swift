import UIKit

extension UILabel: ErrorObserver {
    public func markAsError() {
        textColor = .red
        text = "Error occured"
    }
}
