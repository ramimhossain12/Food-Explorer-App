//
//  RecipeDetailView 2.swift
//  Food Explorer App
//
//  Created by Ramim Hossain on 19/09/2026.
//


import SwiftUI

struct RecipeDetailView: View {
    @Binding var item: FoodItem
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "fork.knife.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .foregroundColor(.orange)
            
            Text(item.name)
                .font(.largeTitle)
                .bold()
            
            Text("Category: \(item.category)")
                .font(.title3)
                .foregroundColor(.secondary)
            
            // Favorite Button (@State, @Binding - Topic 4)
            Button {
                item.isFavorite.toggle()
            } label: {
                Label(
                    item.isFavorite ? "Remove Favorite" : "Add to Favorites",
                    systemImage: item.isFavorite ? "heart.fill" : "heart"
                )
                .font(.headline)
                .foregroundColor(item.isFavorite ? .red : .blue)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}