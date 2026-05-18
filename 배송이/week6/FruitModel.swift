import Foundation

struct FruitModel: Identifiable {
	let id: String = UUID().uuidString
	let name: String
	let count: Int
}
