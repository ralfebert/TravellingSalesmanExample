import Algorithms
import Foundation

/**
 Given a list of locations, what is the shortest possible route that visits each location exactly once?
 */
func travellingSalesmanBruteForce(locations: [City]) -> [City] {
    // Tipps:
    // - Use the first location as start - the result is a cycle, so it doesn't matter which location is used to start
    // - Permutations via Swift algorithms package: https://github.com/apple/swift-algorithms/blob/main/Guides/Permutations.md
    // - Iterating the adjacent pairs: https://github.com/apple/swift-algorithms/blob/main/Guides/AdjacentPairs.md
    // - City#distance to compute the distance
    // - Array: map / reduce / min comes in handy here
    // - Run the unit test to check for the correct result
    return locations
}
