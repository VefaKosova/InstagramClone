//
//  CompleteSignUpView.swift
//  InstagramClone
//
//  Created by Vefa Kosova on 5.12.2023.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            
            Text("Welcome to Instagram, stephon.dowless")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                print("Complete sign up")
            } label: {
                Text("Complete Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding(.vertical)
            
            Spacer()
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }

    }
}

#Preview {
    CompleteSignUpView()
}
