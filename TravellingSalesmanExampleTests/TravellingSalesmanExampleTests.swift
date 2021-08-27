@testable import TravellingSalesmanExample
import XCTest

class TravellingSalesmanExampleTests: XCTestCase {

    func testStraightforwardCases() {
        XCTAssertEqual([], travellingSalesmanBruteForce(cities: []).map(\.name))
        XCTAssertEqual(["Berlin"], travellingSalesmanBruteForce(cities: Array(City.exampleCities[0 ... 0])).map(\.name))
        XCTAssertEqual(["Berlin", "Leipzig"], travellingSalesmanBruteForce(cities: Array(City.exampleCities[0 ... 1])).map(\.name))
    }

    func testExampleDistance() {
        XCTAssertEqual(["Berlin", "Leipzig", "Dresden", "München", "Stuttgart", "Karlsruhe", "Frankfurt", "Hannover", "Hamburg", "Kiel"], travellingSalesmanBruteForce(cities: City.exampleCities).map(\.name))
    }

}
