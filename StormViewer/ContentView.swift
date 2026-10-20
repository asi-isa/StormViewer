import SwiftUI
import Playgrounds

struct ContentView: View {
    @State private var selectedImage: Int?
    
    var body: some View {
        NavigationView {
            List(1..<10, selection: $selectedImage) { number in
                Text("Storm \(number)")
            }
            .frame(width: 150)
            
            if let selectedImage = selectedImage {
                Image(String(selectedImage))
                    .resizable()
                    .scaledToFit()
            } else {
                Text("Please select an image")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .navigationTitle("Storm Viewer")
        .frame(minWidth: 480, minHeight: 320)
            
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
