//
//  BarChartView.swift
//  SwiftCharts
//
//  Created by Enes Buğra Yenidünya on 17.06.2022.
//

import SwiftUI
import Charts

// MARK: - View
struct BarChartView: View {
    // MARK: Properties
    private let chartData = ChartData.barChartData
    
    // MARK: Body
    var body: some View {
        VStack {
            GroupBox("Number of Bus Production by Month") {
                Chart(chartData) { production in
                    BarMark(
                        x: .value("Bus Production", production.count),
                        y: .value("Month", production.date, unit: .month)
                    )
                    .foregroundStyle(by: .value("Bus Production", production.count))
                }
                .padding(.horizontal, 16)
            }
            .backgroundStyle(Color.white)
        }
        .navigationTitle("Bar Chart")
    }
}

// MARK: - Preview
struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
