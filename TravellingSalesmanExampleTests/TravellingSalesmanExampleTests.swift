@testable import TravellingSalesmanExample
import XCTest

class TravellingSalesmanExampleTests: XCTestCase {

    func testExampleDistance() throws {
        XCTAssertEqual(["Berlin", "Leipzig", "Dresden", "München", "Stuttgart", "Karlsruhe", "Frankfurt", "Hannover", "Hamburg", "Kiel"], travellingSalesmanBruteForce(cities: City.exampleCities).map(\.name))
    }

}
