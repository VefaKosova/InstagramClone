//
//  UploadPostView.swift
//  InstagramClone
//
//  Created by Vefa Kosova on 6.12.2023.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @StateObject var viewModel = UploadPostViewModel()
    
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 30
    
    var body: some View {
        VStack {
            // action tool bar
            HStack {
                Button {
                    print("Cancel upload")
                } label: {
                    Text("Cancel")
                        .fontWeight(.semibold)
                }
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("Upload")
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
            }
            .padding(.horizontal)
            
            // post image and caption
            HStack {
                Image("natasha-1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension, height: imageDimension)
                    .clipped()
                
                TextField("Enter your caption...", text: $caption, axis: .vertical)
            }
            .padding()
            
            Spacer()
        }
        .onAppear {
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }
}

#Preview {
    UploadPostView()
}
