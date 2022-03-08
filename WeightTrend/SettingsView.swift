//
//  SettingsView.swift
//  WeightTrend
//
//  Created by Miks Latvis on 08/03/2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section(header: Text("Weight Change Over Time")){
            
            Text("Since yesterday:   0.0 kg")
            Text("Since a week ago: ✅ -0.2 kg")
            Text("Since two weeks ago: ✅ -0.3 kg")
            Text("Since a month ago: 🔺 0.6 kg")
            }
            Section(header: Text("Statistics")) {
            
            Text("Since yesterday:   0.0 kg")
            Text("You are burning 260 cal/day more than you eat.")
         
                Text("You have been tracking your weight for ") +
                Text("8.0 years.").bold()
            
            Text("You have 11.9 kg to lose to reach your goal weight.")
            Text("You will reach your goal around February 21, 2023.")
            Text("You must cut 842 cal/day to match your plan.")
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
