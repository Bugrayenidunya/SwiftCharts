//
//  AreaChartView.swift
//  SwiftCharts
//
//  Created by Enes Buğra Yenidünya on 17.06.2022.
//

import SwiftUI
import Charts

// MARK: - View
struct AreaChartView: View {
    // MARK: Properties
    private let chartData = ChartData.areaChartData
    
    // MARK: Body
    var body: some View {
        VStack {
            GroupBox("Yearly Energy Consumption") {
                Chart(chartData) { consumption in
                    AreaMark(
                        x: .value("", consumption.date, unit: .month),
                        yStart: .value("", consumption.monthlyMinMegawatt),
                        yEnd: .value("", consumption.monthlyMaxMegawatt)
                    )
                }
                .padding(.horizontal)
            }
            .backgroundStyle(Color.white)
        }
        .navigationTitle("Area Chart")
    }
}

// MARK: - Preview
struct AreaChartView_Previews: PreviewProvider {
    static var previews: some View {
        AreaChartView()
    }
}
