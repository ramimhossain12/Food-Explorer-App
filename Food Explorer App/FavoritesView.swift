//
//  FavoritesView.swift
//  Food Explorer App
//
//  Created by Ramim Hossain on 19/09/2026.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "heart.slash")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.gray)
                
                Text("No Favorites Yet")
                    .font(.title2)
                    .bold()
                    .padding(.top, 10)
                
                Text("Mark items as favorite in detail view.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .navigationTitle("Favorites")
        }
    }
}
