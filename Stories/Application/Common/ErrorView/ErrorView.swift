//
//  ErrorView.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import SwiftUI

struct ErrorView: View {
    
    let error: String?
    
    var body: some View {
        Text(error ?? "Unknown Error Occured")
            .foregroundStyle(.red)
    }
}

#Preview {
    ErrorView(error: "Server Problem")
}
