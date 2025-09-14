import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Welcome to Offworld")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                Text("Earn money by placing advertising stickers on your car.")
                    .multilineTextAlignment(.center)
                    .padding()
                NavigationLink(destination: Text("Campaigns Coming Soon")) {
                    Text("Browse Campaigns")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
