//
//  AddStoryButton.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import SwiftUI

struct AddStoryButton: View {
    let action: (() -> Void)
    var body: some View {
        Button {
            action()
        } label: {
            storyButtonLabel
        }
        .padding(.vertical)
        .padding(.horizontal, 10)
    }
}

private extension AddStoryButton {
    
    var storyButtonLabel: some View {
        Text("YM")
            .multilineTextAlignment(.center)
            .padding(10)
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
            )
            .overlay {
                plusImage
            }
    }
    
    var plusImage: some View {
        Image(systemName: "plus")
            .background(
                Circle()
                    .fill(Color.white)
                    .frame(width: 20, height: 20)
                
            )
            .offset(x: 15, y: 20)
    }
}

#Preview {
    AddStoryButton {
        
    }
}
