import Foundation

public struct Product {
    let id = UUID()
    let name: String
    
    public init(name: String) {
        self.name = name
    }
}
