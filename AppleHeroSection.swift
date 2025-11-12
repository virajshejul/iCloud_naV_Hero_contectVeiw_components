import SwiftUI

struct AppleHeroSection: View {
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray.opacity(0.9)]),
                           startPoint: .top,
                           endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack(spacing: 20) {
                // Product Name
                Text("iPhone 15 Pro")
                    .font(.system(size: 42, weight: .bold))
                    .foregroundColor(.white)
                
                // Tagline
                Text("Titanium. So strong. So light. So Pro.")
                    .font(.system(size: 18))
                    .foregroundColor(.gray)
                
                // Buttons
                HStack(spacing: 20) {
                    Button(action: {}) {
                        Text("Learn more")
                            .padding(.horizontal, 22)
                            .padding(.vertical, 10)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(20)
                    }
                    
                    Button(action: {}) {
                        Text("Buy")
                            .padding(.horizontal, 22)
                            .padding(.vertical, 10)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                }
                .padding(.top, 5)
                
                // Product Image
                Image("iphone15pro") // Add your image to Assets folder
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300)
                    .padding(.top, 20)
            }
            .padding()
        }
        .frame(height: 600)
    }
}

#Preview {
    AppleHeroSection()
}
