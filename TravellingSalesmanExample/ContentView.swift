import SwiftUI

struct ContentView: View {
    @State var solution: [City]?
    @State var currentTask: Task<Void, Never>?

    var body: some View {
        VStack(spacing: 10) {
            if let solution = solution {
                Text(solution.map(\.name).joined(separator: "\n"))
            }

            if let currentTask = currentTask {
                HStack(spacing: 10) {
                    ProgressView()
                    Button("Cancel") {
                        currentTask.cancel()
                        self.currentTask = nil
                    }
                }
            } else {
                Button("Find route") {
                    self.currentTask = Task {
                        self.solution = try? await travellingSalesmanBruteForce(locations: City.exampleCities, distance: City.distance)
                        self.currentTask = nil
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
