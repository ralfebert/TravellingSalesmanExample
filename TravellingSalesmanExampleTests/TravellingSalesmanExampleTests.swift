@testable import TravellingSalesmanExample
import XCTest

class TravellingSalesmanExampleTests: XCTestCase {
    func testStraightforwardCases() {
        XCTAssertEqual([], travellingSalesmanBruteForce(locations: [City]()).map(\.name))
        XCTAssertEqual(["Berlin"], travellingSalesmanBruteForce(locations: Array(City.exampleCities[0 ... 0])).map(\.name))
        XCTAssertEqual(["Berlin", "Leipzig"], travellingSalesmanBruteForce(locations: Array(City.exampleCities[0 ... 1])).map(\.name))
    }

    func testExampleDistance() {
        XCTAssertEqual(["Berlin", "Leipzig", "Dresden", "München", "Stuttgart", "Karlsruhe", "Frankfurt", "Hannover", "Hamburg", "Kiel"], travellingSalesmanBruteForce(locations: City.exampleCities).map(\.name))
    }

    func testPerformance() {
        measure {
            XCTAssertEqual(["Berlin", "Leipzig", "Dresden", "München", "Stuttgart", "Frankfurt", "Hamburg", "Kiel"], travellingSalesmanBruteForce(locations: City.exampleCities.dropLast(2)).map(\.name))
        }
    }
}
