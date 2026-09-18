//
//  ExploreView.swift
//  Food Explorer App
//
//  Created by Ramim Hossain on 19/09/2026.
//

import SwiftUI

struct FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let rating: String
    var isFavorite: Bool
}

struct ExploreView: View {
    @State private var items = [
        FoodItem(name: "Kacchi Biryani", category: "Traditional", rating: "4.9", isFavorite: false),
        FoodItem(name: "Grilled Chicken", category: "Fast Food", rating: "4.5", isFavorite: false),
        FoodItem(name: "Pasta Alfredo", category: "Italian", rating: "4.7", isFavorite: false)
    ]
    
    @State private var isAddRecipePresented = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Popular Categories")
                        .font(.headline)
                        .padding(.horizontal)
                    
                    // Horizontal ScrollView (Topic 3)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            CategoryCard(title: "Biryani", icon: "flame.fill")
                            CategoryCard(title: "Burgers", icon: "takeoutbag.and.cup.and.straw.fill")
                            CategoryCard(title: "Desserts", icon: "birthday.cake.fill")
                        }
                        .padding(.horizontal)
                    }
                    
                    Text("All Foods")
                        .font(.headline)
                        .padding(.horizontal)
                    
                    // Vertical List (Topic 2, 5)
                    VStack(spacing: 12) {
                        ForEach($items) { $item in
                            NavigationLink(destination: RecipeDetailView(item: $item)) {
                                FoodCardView(item: item)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
            .navigationTitle("Food Explorer")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        isAddRecipePresented = true
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title2)
                    }
                }
            }
            .sheet(isPresented: $isAddRecipePresented) {
                AddRecipeSheetView()
            }
        }
    }
}

struct CategoryCard: View {
    let title: String
    let icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            Text(title)
                .fontWeight(.medium)
        }
        .padding()
        .background(Color.orange.opacity(0.15))
        .cornerRadius(12)
    }
}

struct FoodCardView: View {
    let item: FoodItem
    
    var body: some View {
        HStack {
            Image(systemName: "fork.knife.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.orange)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(item.name)
                    .font(.headline)
                Text(item.category)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            HStack(spacing: 4) {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text(item.rating)
                    .font(.subheadline)
                    .bold()
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}
