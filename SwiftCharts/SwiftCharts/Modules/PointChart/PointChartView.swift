//
//  PointChartView.swift
//  SwiftCharts
//
//  Created by Enes Buğra Yenidünya on 16.06.2022.
//

import SwiftUI
import Charts

// MARK: - View
struct PointChartView: View {
    
    // MARK: Properties
    private let chartData = ChartData.pointChartData
    
    // MARK: Body
    var body: some View {
        VStack {
            GroupBox("Heart Beats by Time") {
                Chart(chartData) { person in
                    PointMark(
                        x: .value("Time", person.heartBeat.time, unit: .minute),
                        y: .value("Heart Beat", person.heartBeat.beat)
                    )
                    .foregroundStyle(by: .value("Heart Beat", person.heartBeat.beat))
                }
                .padding(.horizontal, 16)
            }
            .backgroundStyle(Color.white)
        }
        .navigationTitle("Point Chart")
    }
}

// MARK: - Preview
struct PointChartView_Previews: PreviewProvider {
    static var previews: some View {
        PointChartView()
    }
}
