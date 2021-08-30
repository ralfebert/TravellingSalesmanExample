import Algorithms
import Foundation

/**
 Given a list of locations and a function to compute the distance between a two locations,
 what is the shortest possible route that visits each location exactly once?
 */
func travellingSalesmanBruteForce<Location, Distance: Numeric & Comparable>(locations: [Location], distance: @escaping (Location, Location) -> Distance) async throws -> [Location] {
    // Use the first location as start - the result is a cycle, so it doesn't matter which location
    // is used to start
    guard let first = locations.first else { return [] }
    let remaining = Array(locations.dropFirst())

    typealias Solution = (path: [Location], cost: Distance)

    let solution = try await withThrowingTaskGroup(of: Solution.self) { group -> Solution in

        // Slice up the work by the second location (creating a Task for every possible solution is too expensive).
        for idx in remaining.indices {
            group.addTask {
                try Task.checkCancellation()
                print(idx, Thread.current)
                var slice = remaining
                let second = slice.remove(at: idx)
                let permutations = slice.permutations().map { [first, second] + $0 }
                return permutations
                    .map { path -> (path: [Location], cost: Distance) in (path: path, cost: path.adjacentPairs().map(distance).reduce(0, +)) }
                    .min { $0.cost < $1.cost }!
            }
        }

        return try await group.min { $0.cost < $1.cost }!

    }

    return solution.path
}
