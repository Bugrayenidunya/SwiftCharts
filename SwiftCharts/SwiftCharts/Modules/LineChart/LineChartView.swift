//
//  LineChartView.swift
//  SwiftCharts
//
//  Created by Enes Buğra Yenidünya on 17.06.2022.
//

import SwiftUI
import Charts

// MARK: - View
struct LineChartView: View {
    
    // MARK: Properties
    private let chartData = ChartData.lineChartData
    
    // MARK: Body
    var body: some View {
        VStack {
            GroupBox("Sales Count Per Day") {
                Chart(chartData) { sale in
                    LineMark(
                        x: .value("Weekday", sale.date, unit: .hour),
                        y: .value("Count", sale.count)
                    )
                    .interpolationMethod(.cardinal)
                }
                .padding(.horizontal, 16)
            }
            .backgroundStyle(Color.white)
        }
        .navigationTitle("Line Chart")
    }
}

// MARK: - Preview
struct LineChartView_Previews: PreviewProvider {
    static var previews: some View {
        LineChartView()
    }
}
