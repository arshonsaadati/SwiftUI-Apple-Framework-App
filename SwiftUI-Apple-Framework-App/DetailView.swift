//
//  DetailView.swift
//  SwiftUI-Apple-Framework-App
//
//  Created by Arshon Saadati on 7/12/24.
//

import SwiftUI

struct DetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .padding()
                }
            }
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                // Action
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(Color.red.gradient)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(true))
}
