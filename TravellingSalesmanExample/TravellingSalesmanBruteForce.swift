import Algorithms
import CoreLocation
import Euclid

protocol HasLocation {
    var location: CLLocationCoordinate2D { get }
}

func cost(path: [HasLocation]) -> Double {
    path.adjacentPairs().map { a, b in a.location.distance(to: b.location) }.reduce(0, +)
}

func travellingSalesmanBruteForce<Location: HasLocation>(cities: [Location]) -> [Location] {
    guard let start = cities.first else { return [] }
    let remaining = cities.dropFirst()

    let paths = remaining.permutations().map { [start] + $0 }

    return paths.min { cost(path: $0) < cost(path: $1) }!
}
