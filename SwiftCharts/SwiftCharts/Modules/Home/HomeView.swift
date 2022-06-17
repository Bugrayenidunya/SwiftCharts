//
//  HomeView.swift
//  SwiftCharts
//
//  Created by Enes Buğra Yenidünya on 16.06.2022.
//

import SwiftUI
import Charts

enum ChartType: Int {
    case area = 0
    case bar = 1
    case line = 2
    case point = 3
    case mixed = 4
}

// MARK: - View
struct HomeView: View {
    
    // MARK: Properties
    @State private var selectedChartType: ChartType = .area
    
    @State private var chartList = [
        "Area Chart",
        "Bar Chart",
        "Line Chart",
        "Point Chart",
        "Mixed Chart"
    ]
    
    // MARK: Body
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(chartList.indices) { index in
                        NavigationLink {
                            if let chartType = ChartType(rawValue: index) {
                                switch chartType {
                                case .area:
                                    AreaChartView()
                                    
                                case .bar:
                                    BarChartView()
                                    
                                case .line:
                                    LineChartView()
                                    
                                case .point:
                                    PointChartView()
                                    
                                case .mixed:
                                    MixedChartView()
                                }
                            }

                        } label: {
                            Text(chartList[index])
                        }
                    }

                }
                .foregroundColor(.black)
                .navigationTitle("AppCircle")
            }
        }
    }
}

// MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
