public extension String {
    var int: Int {
        Int(self) ?? 0
    }
}
