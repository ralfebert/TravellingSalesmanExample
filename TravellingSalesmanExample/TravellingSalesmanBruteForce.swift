import Algorithms

func travellingSalesmanBruteForce<Location>(locations: [Location], distance: (Location, Location) -> Double) -> [Location] {
    // Compute a matrix of the distances between all the locations for faster lookups
    let indices = locations.indices
    var adjacencyMatrix = [[Double]](repeating: [Double](repeating: 0, count: indices.count), count: indices.count)
    for a in indices {
        for b in indices {
            adjacencyMatrix[a][b] = distance(locations[a], locations[b])
        }
    }

    // Use the first location as start - the result is the cycle, so it doesn't matter which location
    // is used to start
    guard let first = indices.first else { return [] }
    let permutations = indices.dropFirst().permutations().map { [first] + $0 }

    return permutations
        .map { path -> (path: [Int], cost: Double) in (path: path, cost: path.adjacentPairs().map { a, b in adjacencyMatrix[a][b] }.reduce(0, +)) }
        .min { $0.cost < $1.cost }!
        .path
        .map { locations[$0] }
}
