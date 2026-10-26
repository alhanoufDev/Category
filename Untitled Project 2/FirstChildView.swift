import SwiftUI

struct ParentView: View {
    // 1. One shared state variable
    @State private var isOn: Bool = false
    // State to show/hide the next page
    @State private var showNextPage: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Page 1")
                .font(.title)

            // Toggle in View 1
            FirstChildView(isOn: $isOn)

            // Button to open the next page
            Button("Go to Next Page") {
                showNextPage = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
        // Opens Page 2 and passes the exact same binding
        .sheet(isPresented: $showNextPage) {
            SecondChildView(isOn: $isOn)
        }
    }
}

// MARK: - View 1
struct FirstChildView: View {
    @Binding var isOn: Bool

    var body: some View {
        Toggle("Toggle 1", isOn: $isOn)
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
    }
}

// MARK: - View 2
struct SecondChildView: View {
    @Binding var isOn: Bool

    var body: some View {
        VStack(spacing: 20) {
            Text("Page 2")
                .font(.title)

            Toggle("Toggle 2", isOn: $isOn)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
        }
        .padding()
    }
}

// MARK: - Previews
#Preview {
    ParentView()
}
