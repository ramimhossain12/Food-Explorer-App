//
//  AddRecipeSheetView.swift
//  Food Explorer App
//
//  Created by Ramim Hossain on 19/09/2026.
//

import SwiftUI

struct AddRecipeSheetView: View {
    @Environment(\.dismiss) var dismiss
    
    // Form States (Topic 4)
    @State private var recipeName = ""
    @State private var category = "Traditional"
    @State private var isVegetarian = false
    
    let categories = ["Traditional", "Fast Food", "Italian", "Desserts"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Recipe Details")) {
                    TextField("Recipe Name", text: $recipeName)
                    
                    Picker("Category", selection: $category) {
                        ForEach(categories, id: \.self) { cat in
                            Text(cat)
                        }
                    }
                    
                    Toggle("Is Vegetarian?", isOn: $isVegetarian)
                }
            }
            .navigationTitle("Add New Recipe")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Close") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        // Save action logic
                        dismiss()
                    }
                    .bold()
                }
            }
        }
    }
}
