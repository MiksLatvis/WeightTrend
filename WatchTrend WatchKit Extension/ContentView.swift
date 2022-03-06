//
//  ContentView.swift
//  WatchTrend WatchKit Extension
//
//  Created by Miks Latvis on 06/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List{
                Group{
                    Text("Weight Change Over Time")
                        .font(.headline)
                    Text("Since yesterday: ✅0.0 kg")
                        .padding(.vertical)
                    Text("Since a week ago: ✅-0.3 kg")
                        .padding(.vertical)
                    Text("Since two weeks ago: ✅  -0.2 kg")
                        .padding(.vertical)
                    Text("Since a month ago: 🔺0.6 kg")
                        .padding(.vertical)
                }
                Text("Statistics")
                    .font(.headline)
                Text("You are losing 0.0 kg/week of total weight.")
                    .padding(.vertical)
                Text("You are burning 42 cal/day more than you eat.")
                    .padding(.vertical)
                Text("You have been tracking your weight for 8.0 years.")
                    .padding(.vertical)
                Text("You have 4.0 kg to lose to reach your goal weight.")
                    .padding(.vertical)
                Text("You will reach your goal around March 4, 2024.")
                    .padding(.vertical)
                Text("You must cut " + "1 060 cal/day" + " to match your plan.")
                    .padding(.vertical)
            }
            .listStyle(.carousel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
