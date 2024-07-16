//
//  FrameworkGridViewModel.swift
//  SwiftUI-Apple-Framework-App
//
//  Created by Arshon Saadati on 7/12/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramwork: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }

    @Published var isShowingDetailView = false
}
