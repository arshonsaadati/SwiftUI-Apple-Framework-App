//
//  FrameworkGridView.swift
//  SwiftUI-Apple-Framework-App
//
//  Created by Arshon Saadati on 7/12/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()

    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramwork = framework
                            }
                    }
                }
            }
            .navigationTitle("🍏 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                DetailView(framework: viewModel.selectedFramwork ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    let framework: Framework
    var body: some View {
        VStack(spacing: 5) {
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .clipShape(Circle())
                .padding()
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding(.horizontal)
    }
}
