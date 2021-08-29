@testable import TravellingSalesmanExample
import XCTest

private func distance(a: City, b: City) -> Double {
    a.location.distance(to: b.location)
}

class TravellingSalesmanExampleTests: XCTestCase {

    func testStraightforwardCases() {
        XCTAssertEqual([], travellingSalesmanBruteForce(locations: [City](), distance: distance).map(\.name))
        XCTAssertEqual(["Berlin"], travellingSalesmanBruteForce(locations: Array(City.exampleCities[0 ... 0]), distance: distance).map(\.name))
        XCTAssertEqual(["Berlin", "Leipzig"], travellingSalesmanBruteForce(locations: Array(City.exampleCities[0 ... 1]), distance: distance).map(\.name))
    }

    func testExampleDistance() {
        XCTAssertEqual(["Berlin", "Leipzig", "Dresden", "München", "Stuttgart", "Karlsruhe", "Frankfurt", "Hannover", "Hamburg", "Kiel"], travellingSalesmanBruteForce(locations: City.exampleCities, distance: distance).map(\.name))
    }

}
