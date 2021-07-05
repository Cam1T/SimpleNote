import UIKit

func filterAndSortBusiness(_ businesses: [[Int]], _ veganFriendly: Int, _ maxPrice: Int, _ maxDistance: Int) -> [Int] {
    var sortedbusinesses = [(id: Int, rating: Int)]()
    businesses.forEach { business in
        if (veganFriendly == 0 || veganFriendly == business[2]) && business[3] <= maxPrice && business[4] <= maxDistance {
            sortedbusinesses.append((business[0], business[1]))
        }
    }
    sortedbusinesses.sort{ $0.rating > $1.rating || ($0.rating == $1.rating && $0.id > $1.id) }
    return sortedbusinesses.map { $0.id }
}

filterAndSortBusiness([[1]], 5, 3, 100)
