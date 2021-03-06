//
//  FullTrendlineView.swift
//  WeightTrend
//
//  Created by Miks Latvis on 08/03/2022.
//

import SwiftUI

struct FullTrendlineView: View {
    var body: some View {
        
        ZStack{
            
            Bars()
                .stroke(.gray, style:  StrokeStyle(lineWidth: 1, lineCap: .round, lineJoin: .round))
                .frame(width: frameWidth, height: frameHeight)
            Trendline()
                .stroke(.red, style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
                .frame(width: frameWidth, height: frameHeight)
            Info()
                .stroke(
                    .gray,
                    style: StrokeStyle(
                        lineWidth: 5,
                        lineCap: .round,
                        lineJoin: .round)
                )
                //.strokeBorder(.blue, lineWidth: 40)
                .frame(width: frameWidth, height: frameHeight)
            
            Text("\(maxValue)")
                .font(.system(.caption, design: .rounded).weight(.heavy))
                .foregroundColor(.secondary)
                .position(x: 0, y: 0 + 5)
                .frame(width: frameWidth, height: frameHeight, alignment: .leading)
            Text("\(minValue)")
                .font(.system(.caption, design: .rounded).weight(.heavy))
                .foregroundColor(.secondary)
                .position(x: 0, y: frameHeight - 5)
                .frame(width: frameWidth, height: frameHeight, alignment: .leading)
        }
        .background(.green)
        
    }
}

struct FullTrendlineView_Previews: PreviewProvider {
    static var previews: some View {
        FullTrendlineView()
    }
}
