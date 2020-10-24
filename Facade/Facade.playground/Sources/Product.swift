import Foundation

public struct Product {
    let id: UUID
    let name: String
    
    public init(
        id: UUID,
        name: String
    ) {
        self.id = id
        self.name = name
    }
}
