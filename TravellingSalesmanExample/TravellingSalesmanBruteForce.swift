import Algorithms

func travellingSalesmanBruteForce<Location>(locations: [Location], distance: (Location, Location) -> Double) -> [Location] {
    guard let start = locations.first else { return [] }
    let remaining = locations.dropFirst()

    let paths = remaining.permutations().map { pathWithoutStart -> (path: [Location], cost: Double) in
        let path = [start] + pathWithoutStart
        let cost = path.adjacentPairs().map { a, b in distance(a, b) }.reduce(0, +)
        return (path: path, cost: cost)
    }

    return paths.min { $0.cost < $1.cost }!.path
}
