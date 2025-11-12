import SwiftUI

struct AppleNavbar: View {
    var body: some View {
        HStack(spacing: 30) {
            // Apple Logo
            Image(systemName: "applelogo")
                .font(.title2)
                .foregroundColor(.white)
                .padding(.leading, 20)
            
            // Navigation Links
            HStack(spacing: 25) {
                Text("Store")
                Text("Mac")
                Text("iPad")
                Text("iPhone")
                Text("Support")
            }
            .foregroundColor(.white)
            .font(.system(size: 14, weight: .medium))
            
            Spacer()
            
            // Icons: Search & Bag
            HStack(spacing: 20) {
                Image(systemName: "magnifyingglass")
                Image(systemName: "bag")
            }
            .font(.system(size: 14))
            .foregroundColor(.white)
            .padding(.trailing, 20)
        }
        .frame(height: 50)
        .background(Color.black)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            AppleNavbar()
            
            Spacer()
            Text("Welcome to Apple WebApp Clone")
                .font(.title2)
                .foregroundColor(.gray)
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    ContentView()
}
