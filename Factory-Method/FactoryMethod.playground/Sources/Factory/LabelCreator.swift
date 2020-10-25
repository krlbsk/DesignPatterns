public protocol LabelCreator {
    func create() -> Label
    func createAndSetup() -> Label
}
