//
//  MixedChartView.swift
//  SwiftCharts
//
//  Created by Enes Buğra Yenidünya on 17.06.2022.
//

import SwiftUI
import Charts

// MARK: - View
struct MixedChartView: View {
    
    // MARK: Properties
    private let lineChartData = ChartData.lineChartData
    private let pointChartData = ChartData.pointChartData
    
    // MARK: Body
    var body: some View {
        VStack {
            GroupBox("Mixed: Sales Count & Heart Beat") {
                Chart {
                    ForEach(lineChartData) { sale in
                        LineMark(
                            x: .value("Weekday", sale.date, unit: .minute),
                            y: .value("Count", sale.count)
                        )
                        .interpolationMethod(.cardinal)
                    }
                    .foregroundStyle(.green)
                    
                    ForEach(pointChartData) { person in
                        PointMark(
                            x: .value("Time", person.heartBeat.time, unit: .minute),
                            y: .value("Heart Beat", person.heartBeat.beat)
                        )
                        .foregroundStyle(by: .value("Heart Beat", person.heartBeat.beat))
                    }
                    
                }
                .padding(.horizontal, 16)
            }
            .backgroundStyle(Color.white)
        }
        .navigationTitle("Bar Chart")
    }
}

// MARK: - Preview
struct MixedChartView_Previews: PreviewProvider {
    static var previews: some View {
        MixedChartView()
    }
}
