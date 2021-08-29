import CoreLocation
import MapKit

struct City {
    let name: String
    let location: CLLocationCoordinate2D
}

extension City {

    static let exampleCities = [
        City(name: "Berlin", location: .init(latitude: 52.518, longitude: 13.408)),
        City(name: "Leipzig", location: .init(latitude: 51.340, longitude: 12.360)),
        City(name: "Dresden", location: .init(latitude: 51.050, longitude: 13.737)),
        City(name: "München", location: .init(latitude: 48.137, longitude: 11.576)),
        City(name: "Hamburg", location: .init(latitude: 53.551, longitude: 9.993)),
        City(name: "Frankfurt", location: .init(latitude: 50.110, longitude: 8.682)),
        City(name: "Kiel", location: .init(latitude: 54.323, longitude: 10.139)),
        City(name: "Stuttgart", location: .init(latitude: 48.783, longitude: 9.183)),
        City(name: "Karlsruhe", location: .init(latitude: 49.006, longitude: 8.403)),
        City(name: "Hannover", location: .init(latitude: 52.370, longitude: 9.733)),
    ]

    static func distance(_ a: City, _ b: City) -> Double {
        MKMapPoint(a.location).distance(to: MKMapPoint(b.location))
    }

}
