import Algorithms

/**
 Given a list of locations and a function to compute the distance between a two locations,
 what is the shortest possible route that visits each location exactly once?
 */
func travellingSalesmanBruteForce<Location, Distance: Numeric & Comparable>(locations: [Location], distance: (Location, Location) -> Distance) -> [Location] {
    // Use the first location as start - the result is a cycle, so it doesn't matter which location
    // is used to start
    guard let first = locations.first else { return [] }
    let permutations = locations.dropFirst().permutations().map { [first] + $0 }

    // Iterate all possible paths and find the shortest one
    return permutations
        .map { path -> (path: [Location], cost: Distance) in (path: path, cost: path.adjacentPairs().map(distance).reduce(0, +)) }
        .min { $0.cost < $1.cost }!
        .path
}
