import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.green
    
    var body: some View {
        List {
            Text("Hello, world!")
                .swipeActions(edge: .leading) {
                    Button {
                       print("Added")
                    } label: {
                        Label("Add", systemImage: "plus.circle")
                    }
                    .tint(.orange)
                }
                .swipeActions(edge: .trailing) {
                    Button(role: .destructive) {
                       print("delete")
                    } label: {
                        Label("Deleting", systemImage: "trash.circle")
                    }
                }
                
        }
    }
}

#Preview {
    ContentView()
}
