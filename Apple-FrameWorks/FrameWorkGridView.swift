//
//  ContentView.swift
//  Apple-FrameWorks
//
//  Created by Bhuwan Singh on 01/09/24.
//

import SwiftUI

struct FrameWorkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks) { framework in
                        FrameWorkTitleView(framework: framework)
                            .onTapGesture {
                                print("tapped.")
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .padding()
    }
}

#Preview {
    FrameWorkGridView()
}
struct FrameWorkTitleView: View {
    let framework : Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
