import Algorithms
import CoreLocation

struct City {
    let name: String
    let position: CLLocationCoordinate2D
}

extension City {

    static let exampleCities = [
        City(name: "Berlin", position: CLLocationCoordinate2D(latitude: 52.518, longitude: 13.408)),
        City(name: "Leipzig", position: CLLocationCoordinate2D(latitude: 51.340, longitude: 12.360)),
        City(name: "Dresden", position: CLLocationCoordinate2D(latitude: 51.050, longitude: 13.737)),
        City(name: "München", position: CLLocationCoordinate2D(latitude: 48.137, longitude: 11.576)),
        City(name: "Hamburg", position: CLLocationCoordinate2D(latitude: 53.551, longitude: 9.993)),
        City(name: "Frankfurt", position: CLLocationCoordinate2D(latitude: 50.110, longitude: 8.682)),
        City(name: "Kiel", position: CLLocationCoordinate2D(latitude: 54.323, longitude: 10.139)),
        City(name: "Stuttgart", position: CLLocationCoordinate2D(latitude: 48.783, longitude: 9.183)),
        City(name: "Karlsruhe", position: CLLocationCoordinate2D(latitude: 49.006, longitude: 8.403)),
        City(name: "Hannover", position: CLLocationCoordinate2D(latitude: 52.370, longitude: 9.733)),
    ]

}

extension CLLocationCoordinate2D {
    /// Returns distance from coordinate in meters.
    /// - Parameter from: coordinate which will be used as end point.
    /// - Returns: Returns distance in meters.
    func distance(from: CLLocationCoordinate2D) -> CLLocationDistance {
        let from = CLLocation(latitude: from.latitude, longitude: from.longitude)
        let to = CLLocation(latitude: self.latitude, longitude: self.longitude)
        return from.distance(from: to)
    }
}

func cost(path: [City]) -> Double {
    path.adjacentPairs().map { a, b in a.position.distance(from: b.position) }.reduce(0, +)
}

func travellingSalesmanBruteForce(cities: [City]) -> [City] {
    let start = cities.first!
    let remaining = cities.dropFirst()

    let paths = remaining.permutations().map { [start] + $0 }

    print(cities.count, paths.count)

    let path = paths.min { path1, path2 in
        cost(path: path1) < cost(path: path2)
    }

    return path!
}
