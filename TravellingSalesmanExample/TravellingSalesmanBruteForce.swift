import Algorithms

func travellingSalesmanBruteForce<Location>(locations: [Location], distance: (Location, Location) -> Double) -> [Location] {
    // Use the first location as start - the result is the cycle, so it doesn't matter which location
    // is used to start
    guard let first = locations.first else { return [] }
    let permutations = locations.dropFirst().permutations().map { [first] + $0 }

    return permutations
        .map { path -> (path: [Location], cost: Double) in (path: path, cost: path.adjacentPairs().map(distance).reduce(0, +)) }
        .min { $0.cost < $1.cost }!
        .path
}
