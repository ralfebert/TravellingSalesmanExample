# Naive Travelling salesman in Swift

What's the most elegant solution to write the naive "try all combinations" solution of the [travelling salesman problem](https://en.wikipedia.org/wiki/Travelling_salesman_problem) in Swift?

See [TravellingSalesmanExample/TravellingSalesmanBruteForce.swift](TravellingSalesmanExample/TravellingSalesmanBruteForce.swift)

## Improvements already implemented

* Use permutations / adjacentPairs from [Swift Algorithms](https://github.com/apple/swift-algorithms)
* Use the Euclid package to compute the distance of two CLLocationCoordinate2D, see https://stackoverflow.com/a/68958391/128083
* Use an interface HasLocation to allow arbitrary input types

## Ideas / Todo

* Compute distances only once
* Unit test for performance
* Show path using MapKit (maybe interactive: show the best current path)
* Is there a better exact algorithm that's still straightforward?
* Implement a heuristic algorithm as alternative

## Existing implementations

* [dnadoba/traveling-salesman-problem: macOS App written in Swift to find the shortest path](https://github.com/dnadoba/traveling-salesman-problem)
