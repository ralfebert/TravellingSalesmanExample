import SwiftUI

struct ContentView: View {

    @State var solution: [City]?

    var body: some View {
        VStack(spacing: 10) {
            if let solution = solution {
                Text(solution.map(\.name).joined(separator: "\n"))
            }

            Button("Find route") {
                self.solution = travellingSalesmanBruteForce(locations: City.exampleCities, distance: City.distance)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
