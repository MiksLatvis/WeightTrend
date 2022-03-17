//
//  DrawGrid.swift
//  WeightTrend
//
//  Created by Miks Latvis on 17/03/2022.
//

import Foundation
import SwiftUI

func drawGrid() -> some View {
    VStack(spacing: 0) {
        Color.secondary.frame(height: 1, alignment: .center)
        HStack(spacing: 0) {
            Color.clear
                .frame(width: 8, height: 150)
            ForEach(0..<11) { i in
                Color.secondary.frame(width: 1, height: 150, alignment: .center)
                Spacer()

            }
            Color.secondary.frame(width: 1, height: 150, alignment: .center)
            Color.clear
                .frame(width: 8, height: 150)
        }
        Color.secondary.frame(height: 1, alignment: .center)
    }
}


