public extension LabelCreator {
    func createAndSetup() -> Label {
        let label = create()
        label.setup()
        return label
    }
}
