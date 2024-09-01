//
//  FrameWorkDetailView.swift
//  Apple-FrameWorks
//
//  Created by Bhuwan Singh on 01/09/24.
//

import SwiftUI

struct FrameWorkDetailView: View {
    @Binding var isShowingDetailView: Bool
    
    var framework: Framework
    var body: some View {
        VStack{
            HStack {
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                        .padding()
                }
            }
            
            Spacer()
            
            FrameWorkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameWorkDetailView(isShowingDetailView: .constant(false), framework: MockData.sampleDataFramework)
}
