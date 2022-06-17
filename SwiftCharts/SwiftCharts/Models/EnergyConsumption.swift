//
//  EnergyConsumption.swift
//  SwiftCharts
//
//  Created by Enes Buğra Yenidünya on 17.06.2022.
//

import Foundation

struct EnergyConsumption: Identifiable {
    let id: ObjectIdentifier
    let date: Date
    let monthlyMaxMegawatt: Double
    let monthlyMinMegawatt: Double
}
