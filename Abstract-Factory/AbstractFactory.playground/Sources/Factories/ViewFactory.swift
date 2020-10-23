import Foundation

public protocol ViewFactory {
    func createButton() -> Button
    func createLabel() -> Label
}
