//
//  KnownSpecies+.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/17/25.
//


import SwiftUI

public typealias Nutrient = KnownSpecies
public typealias MacroElement = KnownSpecies
public typealias TraceElement = KnownSpecies

public extension Nutrient {
    static let ammonia = Nutrient(named: .ammonia, formula: "NH_3")
    static let ammonium = Nutrient(named: .ammonium, formula: "NH_4^+")
    static let nitrate = Nutrient(named: .nitrate, formula: "NO_3^-")
    static let nitrite = Nutrient(named: .nitrite, formula: "NO_2^-")
    static let phosphate = Nutrient(named: .phosphate, formula: "PO_4^3-")
    static let phosphorus = Nutrient(named: .phosphorus, formula: "P")
}

public extension MacroElement {
    static let calcium = MacroElement(named: .calcium, formula: "Ca^2+")
    static let magnesium = MacroElement(named: .magnesium, formula: "Mg^2+")
    static let potassium = MacroElement(named: .potassium, formula: "K^+")
    static let sulfate = MacroElement(named: .sulfate, formula: "SO_4^2-")
}

public extension TraceElement {
    static let boron = TraceElement(named: .boron, formula: "B")
    static let cobalt = TraceElement(named: .cobalt, formula: "Co^2+")
    static let copper = TraceElement(named: .copper, formula: "Cu^2+")
    static let fluoride = TraceElement(named: .fluoride, formula: "F^-")
    static let iodine = TraceElement(named: .iodine, formula: "I^-")
    static let iron = TraceElement(named: .iron, formula: "Fe^2+")
    static let lithium = TraceElement(named: .lithium, formula: "Li^+")
    static let manganese = TraceElement(named: .manganese, formula: "Mn^2+")
    static let molybdenum = TraceElement(named: .molybdenum, formula: "Mo")
    static let nickel = TraceElement(named: .nickel, formula: "Ni^2+")
    static let selenium = TraceElement(named: .selenium, formula: "Se")
    static let silicate = TraceElement(named: .silicate, formula: "SiO_4^4-")
    static let strontium = TraceElement(named: .strontium, formula: "Sr^2+")
    static let vanadium = TraceElement(named: .vanadium, formula: "V")
    static let zinc = TraceElement(named: .zinc, formula: "Zn^2+")
}
