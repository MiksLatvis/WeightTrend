//
//  ContentView.swift
//  WeightTrend
//
//  Created by Miks Latvis on 06/03/2022.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                BasicTrendView()
                    .padding()
                Text("103.9kg")
                    .font(.title)
                Text("✅ -7.7kg")
                InfoView()
                    .background(.secondary)
            }
            .navigationTitle("WeightTrend")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
           // .preferredColorScheme(.dark)
    }
}
