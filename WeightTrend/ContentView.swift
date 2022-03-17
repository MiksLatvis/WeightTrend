//
//  ContentView.swift
//  WeightTrend
//
//  Created by Miks Latvis on 06/03/2022.
//

import SwiftUI

// MARK: Setup data formats

struct Response: Codable {
    var Measurements: [Result]
}

struct Result: Codable {
    var Date: String
    var WeightActual: Double
    var WeightTrend: Double
    var WeightIsInterpolated: Bool
}

let trendPeriods = ["2 w", "4 w", "3 m", "6 m", "1 year", "All"]

// MARK: Date conversion extension

extension String {
    func roundTripDate(style: DateFormatter.Style) -> String? {
        //set things up
        let formatter = DateFormatter()
       // formatter.locale = Locale(identifier: "es_AR")
        formatter.timeZone = .current

        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss" // this is the date format coming in
        //this guards against a String not being in the correct format
        guard let date = formatter.date(from: self) else {
            return nil
        }

        formatter.dateStyle = style // this is the date format going out
        return formatter.string(from: date)
    }
}

// MARK: Content view

struct ContentView: View {
    @State private var trendPeriod = "3 m"
    @State private var Measurements = [Result]()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Section {
                        Picker("Weight period", selection: $trendPeriod) {
                            ForEach(trendPeriods, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                        .padding()
                    }
                
                    Text("\(Measurements.count)")
                    
                   
                    ForEach(Measurements, id: \.Date) { item in
                     //   Text("\(item.Date) ")
                      //  Text(item.Date.roundTripDate(style: .short) ?? "No date")
                       // Text("\(item.WeightActual) ")
                      //  Text("\(item.WeightTrend) ")
                        
                    }
                    
                }
                .task {
                    await loadData()
                }
                BasicTrendView()
                    .padding(.horizontal)
                Text("103.9kg")
                    .font(.title)
                Text("✅ -7.7kg")
                InfoView()
                    .background(.secondary)
            }
            
            .navigationTitle("WeightTrend")
            .navigationBarItems(trailing: Image(systemName: "person.crop.circle"))
                //.foregroundColor(.blue)
        }
    }
    
// MARK: Load data
    
    func loadData() async {
        guard let url = URL(string: "https://trendweight.com/u/01175a8cdd3c49/data/") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)

            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                print("so far so good")
                Measurements = decodedResponse.Measurements
            }
        } catch {
            print("Invalid data")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
           // .preferredColorScheme(.dark)
    }
}
