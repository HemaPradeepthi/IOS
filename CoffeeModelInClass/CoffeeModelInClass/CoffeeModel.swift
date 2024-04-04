import Foundation

struct Coffee {
    var name: String
    var size: String
    var price: Double
    
    init(name: String, size: String, price: Double) {
        self.name = name
        self.size = size
        self.price = price
    }
}

class DataManager {
    static let sharedDataManager = DataManager()
    
    private var coffeeItems = [
        "regular": [
            Coffee(name: "Regular Brew", size: "Small", price: 2.5),
            Coffee(name: "Regular Brew", size: "Medium", price: 3.0),
            Coffee(name: "Regular Brew", size: "Large", price: 3.5),
            Coffee(name: "Espresso", size: "Single Shot", price: 2.0),
            Coffee(name: "Espresso", size: "Double Shot", price: 3.0),
            Coffee(name: "Cappuccino", size: "Regular", price: 4.0)
        ],
        
        "special": [
            Coffee(name: "Caramel Macchiato", size: "Regular", price: 4.5),
            Coffee(name: "Mocha", size: "Large", price: 4.0),
            Coffee(name: "Pumpkin Spice Latte", size: "Medium", price: 5.0),
            Coffee(name: "Iced Vanilla Latte", size: "Large", price: 4.5),
            Coffee(name: "Flat White", size: "Regular", price: 4.0),
            Coffee(name: "Affogato", size: "Single Scoop", price: 3.5)
        ]
    ]
    
    func fetchCoffeeItems() -> [String: [Coffee]] {
        self.coffeeItems
    }
}
