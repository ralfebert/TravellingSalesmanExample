# Naive Travelling salesman in Swift

What's the most elegant solution to write the naive "try all combinations" solution of the [travelling salesman problem](https://en.wikipedia.org/wiki/Travelling_salesman_problem) in Swift?

See [TravellingSalesmanExample/TravellingSalesmanBruteForce.swift](TravellingSalesmanExample/TravellingSalesmanBruteForce.swift)

## Improvements already implemented

* Use permutations / adjacentPairs from [Swift Algorithms](https://github.com/apple/swift-algorithms)
* Allow arbitrary input types by passing a distance function
* Compute distances only once and use a adjacency matrix (branch adjacency-matrix)

## Ideas / Todo

* Show path using MapKit (maybe interactive: show the best current path)
* Is there a better exact algorithm that's still straightforward?
* Implement a heuristic algorithm as alternative

## Existing implementations

* [dnadoba/traveling-salesman-problem: macOS App written in Swift to find the shortest path](https://github.com/dnadoba/traveling-salesman-problem)
