//
//  ContentView.swift
//  Test
//
//  Created by Airi Furukawa on 2022/09/30.
//

import SwiftUI
import Charts

struct Step: Identifiable{
    var date: String
    let steps: Int
    var id: String {date}
}
let steps : [Step] = [
    .init(date: "2022/09/30", steps: 837),
    .init(date: "2022/10/01", steps: 736),
    .init(date: "2022/10/02", steps: 293),
    .init(date: "2022/10/03", steps: 847),
    .init(date: "2022/10/04", steps: 927),
    .init(date: "2022/10/05", steps: 273),
    .init(date: "2022/10/06", steps: 277),
    .init(date: "2022/10/07", steps: 635),
    .init(date: "2022/10/08", steps: 529),
    .init(date: "2022/10/09", steps: 729)
]

struct Temp: Identifiable{
    var date: String
    let temp: Double
    var id: String {date}
}
let temp : [Temp] = [
    .init(date: "2022/09/30", temp: 36.5),
    .init(date: "2022/10/01", temp: 35.9),
    .init(date: "2022/10/02", temp: 37.9),
    .init(date: "2022/10/03", temp: 36.6),
    .init(date: "2022/10/04", temp: 36.0),
    .init(date: "2022/10/05", temp: 36.7),
    .init(date: "2022/10/06", temp: 36.4),
    .init(date: "2022/10/07", temp: 36.6),
    .init(date: "2022/10/08", temp: 36.8),
    .init(date: "2022/10/09", temp: 36.2)
]

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Your Status").font(.largeTitle)
            Chart{
                ForEach(steps) {s in
                    LineMark(x: .value("date", s.date), y: .value("steps", s.steps))
                        .foregroundStyle(by: .value("Step", s.steps))
                        .lineStyle(StrokeStyle(lineWidth: 1))
                }
                ForEach(temp) {t in
                    LineMark(x: .value("date", t.date), y: .value("steps", t.temp))
                        .foregroundStyle(by: .value("Temp", t.temp))
                        .lineStyle(StrokeStyle(lineWidth: 1))
                }
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
