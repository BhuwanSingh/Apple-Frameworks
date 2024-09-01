//
//  AFButton.swift
//  Apple-FrameWorks
//
//  Created by Bhuwan Singh on 01/09/24.
//

import SwiftUI

struct AFButton: View {
    var title:String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
