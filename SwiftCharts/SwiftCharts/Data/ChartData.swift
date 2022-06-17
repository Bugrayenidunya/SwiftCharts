//
//  ChartData.swift
//  SwiftCharts
//
//  Created by Enes Buğra Yenidünya on 16.06.2022.
//

import Foundation

struct ChartData {
    private static let minute: TimeInterval = 60
    private static let hour = minute * 60
    private static let day = hour * 24
    private static let week = day * 7
    private static let month = week * 4
    private static let sixMonth = week * 26
    private static let year = sixMonth * 2
    
    static var pointChartData: [Person] {
        var data: [Person] = []
        var time = Date.now
        
        for _ in 1..<50 {
            data.append(.init(
                id: .init(Person.self),
                heartBeat: .init(beat: Int.random(in: 45...135), time: time))
            )
            
            time = time + day
        }
        
        return data
    }
    
    static var lineChartData: [Sale] {
        var sales: [Sale] = []
        
        for i in 1..<50 {
            sales.append(
                .init(id: .init(Sale.self), date: .now.addingTimeInterval(Double(i) * day), count: Int.random(in: 0...100))
            )
        }
        
        return sales
    }
    
    static var barChartData: [Production] {
        var productions: [Production] = []
        
        for i in 1..<13 {
            productions.append(
                .init(id: .init(Production.self), date: .now.addingTimeInterval(Double(i) * month), count: i * Int.random(in: 20...100))
            )
        }
        
        return productions
    }
    
    static var areaChartData: [EnergyConsumption] {
        var consumptions: [EnergyConsumption] = []
        
        for i in 1..<13 {
            consumptions.append(
                .init(
                    id: .init(EnergyConsumption.self),
                    date: .now.addingTimeInterval(Double(i) * month),
                    monthlyMaxMegawatt: Double.random(in: 1...5),
                    monthlyMinMegawatt: Double(i) * Double.random(in: 15...20)
                )
            )
        }
        
        return consumptions
    }
}
