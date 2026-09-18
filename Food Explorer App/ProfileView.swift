//
//  ProfileView.swift
//  Food Explorer App
//
//  Created by Ramim Hossain on 19/09/2026.
//

import SwiftUI

struct ProfileView: View {
    @State private var isLogoutAlertPresented = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .foregroundColor(.blue)
                
                Text("Ramim Hossain")
                    .font(.title)
                    .bold()
                
                Spacer()
                
                Button(role: .destructive) {
                    isLogoutAlertPresented = true
                } label: {
                    Text("Log Out")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red.opacity(0.1))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                .alert("Log Out?", isPresented: $isLogoutAlertPresented) {
                    Button("Log Out", role: .destructive) {
                        print("Logged Out")
                    }
                    Button("Cancel", role: .cancel) { }
                } message: {
                    Text("Are you sure you want to log out?")
                }
            }
            .padding(.vertical)
            .navigationTitle("Profile")
        }
    }
}
