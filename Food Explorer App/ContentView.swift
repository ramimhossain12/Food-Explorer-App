import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // Tab 1: Explore Page
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            
            // Tab 2: Favorites Page
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
            
            // Tab 3: Profile Page
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}   
