//
//  Elements.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/16/25.
//

import SwiftUI

public enum Element: String, CaseIterable, Codable, Sendable, RawRepresentable {
    // Period 1
    case hydrogen = "H"
    case helium = "He"
    
    // Period 2
    case lithium = "Li"
    case beryllium = "Be"
    case boron = "B"
    case carbon = "C"
    case nitrogen = "N"
    case oxygen = "O"
    case fluorine = "F"
    case neon = "Ne"
    
    // Period 3
    case sodium = "Na"
    case magnesium = "Mg"
    case aluminum = "Al"
    case silicon = "Si"
    case phosphorus = "P"
    case sulfur = "S"
    case chlorine = "Cl"
    case argon = "Ar"
    
    // Period 4
    case potassium = "K"
    case calcium = "Ca"
    case scandium = "Sc"
    case titanium = "Ti"
    case vanadium = "V"
    case chromium = "Cr"
    case manganese = "Mn"
    case iron = "Fe"
    case cobalt = "Co"
    case nickel = "Ni"
    case copper = "Cu"
    case zinc = "Zn"
    case gallium = "Ga"
    case germanium = "Ge"
    case arsenic = "As"
    case selenium = "Se"
    case bromine = "Br"
    case krypton = "Kr"
    
    // Period 5
    case rubidium = "Rb"
    case strontium = "Sr"
    case yttrium = "Y"
    case zirconium = "Zr"
    case niobium = "Nb"
    case molybdenum = "Mo"
    case technetium = "Tc"
    case ruthenium = "Ru"
    case rhodium = "Rh"
    case palladium = "Pd"
    case silver = "Ag"
    case cadmium = "Cd"
    case indium = "In"
    case tin = "Sn"
    case antimony = "Sb"
    case tellurium = "Te"
    case iodine = "I"
    case xenon = "Xe"
    
    // Period 6
    case cesium = "Cs"
    case barium = "Ba"
    case lanthanum = "La"
    case cerium = "Ce"
    case praseodymium = "Pr"
    case neodymium = "Nd"
    case promethium = "Pm"
    case samarium = "Sm"
    case europium = "Eu"
    case gadolinium = "Gd"
    case terbium = "Tb"
    case dysprosium = "Dy"
    case holmium = "Ho"
    case erbium = "Er"
    case thulium = "Tm"
    case ytterbium = "Yb"
    case lutetium = "Lu"
    case hafnium = "Hf"
    case tantalum = "Ta"
    case tungsten = "W"
    case rhenium = "Re"
    case osmium = "Os"
    case iridium = "Ir"
    case platinum = "Pt"
    case gold = "Au"
    case mercury = "Hg"
    case thallium = "Tl"
    case lead = "Pb"
    case bismuth = "Bi"
    case polonium = "Po"
    case astatine = "At"
    case radon = "Rn"
    
    // Period 7
    case francium = "Fr"
    case radium = "Ra"
    case actinium = "Ac"
    case thorium = "Th"
    case protactinium = "Pa"
    case uranium = "U"
    case neptunium = "Np"
    case plutonium = "Pu"
    case americium = "Am"
    case curium = "Cm"
    case berkelium = "Bk"
    case californium = "Cf"
    case einsteinium = "Es"
    case fermium = "Fm"
    case mendelevium = "Md"
    case nobelium = "No"
    case lawrencium = "Lr"
    case rutherfordium = "Rf"
    case dubnium = "Db"
    case seaborgium = "Sg"
    case bohrium = "Bh"
    case hassium = "Hs"
    case meitnerium = "Mt"
    case darmstadtium = "Ds"
    case roentgenium = "Rg"
    case copernicium = "Cn"
    case nihonium = "Nh"
    case flerovium = "Fl"
    case moscovium = "Mc"
    case livermorium = "Lv"
    case tennessine = "Ts"
    case oganesson = "Og"
}

extension Element {
    public var atomicNumber: Int {
        switch self {
            case .hydrogen: return 1
            case .helium: return 2
            case .lithium: return 3
            case .beryllium: return 4
            case .boron: return 5
            case .carbon: return 6
            case .nitrogen: return 7
            case .oxygen: return 8
            case .fluorine: return 9
            case .neon: return 10
            case .sodium: return 11
            case .magnesium: return 12
            case .aluminum: return 13
            case .silicon: return 14
            case .phosphorus: return 15
            case .sulfur: return 16
            case .chlorine: return 17
            case .argon: return 18
            case .potassium: return 19
            case .calcium: return 20
            case .scandium: return 21
            case .titanium: return 22
            case .vanadium: return 23
            case .chromium: return 24
            case .manganese: return 25
            case .iron: return 26
            case .cobalt: return 27
            case .nickel: return 28
            case .copper: return 29
            case .zinc: return 30
            case .gallium: return 31
            case .germanium: return 32
            case .arsenic: return 33
            case .selenium: return 34
            case .bromine: return 35
            case .krypton: return 36
            case .rubidium: return 37
            case .strontium: return 38
            case .yttrium: return 39
            case .zirconium: return 40
            case .niobium: return 41
            case .molybdenum: return 42
            case .technetium: return 43
            case .ruthenium: return 44
            case .rhodium: return 45
            case .palladium: return 46
            case .silver: return 47
            case .cadmium: return 48
            case .indium: return 49
            case .tin: return 50
            case .antimony: return 51
            case .tellurium: return 52
            case .iodine: return 53
            case .xenon: return 54
            case .cesium: return 55
            case .barium: return 56
            case .lanthanum: return 57
            case .cerium: return 58
            case .praseodymium: return 59
            case .neodymium: return 60
            case .promethium: return 61
            case .samarium: return 62
            case .europium: return 63
            case .gadolinium: return 64
            case .terbium: return 65
            case .dysprosium: return 66
            case .holmium: return 67
            case .erbium: return 68
            case .thulium: return 69
            case .ytterbium: return 70
            case .lutetium: return 71
            case .hafnium: return 72
            case .tantalum: return 73
            case .tungsten: return 74
            case .rhenium: return 75
            case .osmium: return 76
            case .iridium: return 77
            case .platinum: return 78
            case .gold: return 79
            case .mercury: return 80
            case .thallium: return 81
            case .lead: return 82
            case .bismuth: return 83
            case .polonium: return 84
            case .astatine: return 85
            case .radon: return 86
            case .francium: return 87
            case .radium: return 88
            case .actinium: return 89
            case .thorium: return 90
            case .protactinium: return 91
            case .uranium: return 92
            case .neptunium: return 93
            case .plutonium: return 94
            case .americium: return 95
            case .curium: return 96
            case .berkelium: return 97
            case .californium: return 98
            case .einsteinium: return 99
            case .fermium: return 100
            case .mendelevium: return 101
            case .nobelium: return 102
            case .lawrencium: return 103
            case .rutherfordium: return 104
            case .dubnium: return 105
            case .seaborgium: return 106
            case .bohrium: return 107
            case .hassium: return 108
            case .meitnerium: return 109
            case .darmstadtium: return 110
            case .roentgenium: return 111
            case .copernicium: return 112
            case .nihonium: return 113
            case .flerovium: return 114
            case .moscovium: return 115
            case .livermorium: return 116
            case .tennessine: return 117
            case .oganesson: return 118
        }
    }
    
    public var symbol: String {
        return rawValue
    }
    
    public var name: LocalizedStringResource {
        switch self {
            case .hydrogen: return .hydrogen
            case .helium: return .helium
            case .lithium: return .lithium
            case .beryllium: return .beryllium
            case .boron: return .boron
            case .carbon: return .carbon
            case .nitrogen: return .nitrogen
            case .oxygen: return .oxygen
            case .fluorine: return .fluorine
            case .neon: return .neon
            case .sodium: return .sodium
            case .magnesium: return .magnesium
            case .aluminum: return .aluminum
            case .silicon: return .silicon
            case .phosphorus: return .phosphorus
            case .sulfur: return .sulfur
            case .chlorine: return .chlorine
            case .argon: return .argon
            case .potassium: return .potassium
            case .calcium: return .calcium
            case .scandium: return .scandium
            case .titanium: return .titanium
            case .vanadium: return .vanadium
            case .chromium: return .chromium
            case .manganese: return .manganese
            case .iron: return .iron
            case .cobalt: return .cobalt
            case .nickel: return .nickel
            case .copper: return .copper
            case .zinc: return .zinc
            case .gallium: return .gallium
            case .germanium: return .germanium
            case .arsenic: return .arsenic
            case .selenium: return .selenium
            case .bromine: return .bromine
            case .krypton: return .krypton
            case .rubidium: return .rubidium
            case .strontium: return .strontium
            case .yttrium: return .yttrium
            case .zirconium: return .zirconium
            case .niobium: return .niobium
            case .molybdenum: return .molybdenum
            case .technetium: return .technetium
            case .ruthenium: return .ruthenium
            case .rhodium: return .rhodium
            case .palladium: return .palladium
            case .silver: return .silver
            case .cadmium: return .cadmium
            case .indium: return .indium
            case .tin: return .tin
            case .antimony: return .antimony
            case .tellurium: return .tellurium
            case .iodine: return .iodine
            case .xenon: return .xenon
            case .cesium: return .cesium
            case .barium: return .barium
            case .lanthanum: return .lanthanum
            case .cerium: return .cerium
            case .praseodymium: return .praseodymium
            case .neodymium: return .neodymium
            case .promethium: return .promethium
            case .samarium: return .samarium
            case .europium: return .europium
            case .gadolinium: return .gadolinium
            case .terbium: return .terbium
            case .dysprosium: return .dysprosium
            case .holmium: return .holmium
            case .erbium: return .erbium
            case .thulium: return .thulium
            case .ytterbium: return .ytterbium
            case .lutetium: return .lutetium
            case .hafnium: return .hafnium
            case .tantalum: return .tantalum
            case .tungsten: return .tungsten
            case .rhenium: return .rhenium
            case .osmium: return .osmium
            case .iridium: return .iridium
            case .platinum: return .platinum
            case .gold: return .gold
            case .mercury: return .mercury
            case .thallium: return .thallium
            case .lead: return .lead
            case .bismuth: return .bismuth
            case .polonium: return .polonium
            case .astatine: return .astatine
            case .radon: return .radon
            case .francium: return .francium
            case .radium: return .radium
            case .actinium: return .actinium
            case .thorium: return .thorium
            case .protactinium: return .protactinium
            case .uranium: return .uranium
            case .neptunium: return .neptunium
            case .plutonium: return .plutonium
            case .americium: return .americium
            case .curium: return .curium
            case .berkelium: return .berkelium
            case .californium: return .californium
            case .einsteinium: return .einsteinium
            case .fermium: return .fermium
            case .mendelevium: return .mendelevium
            case .nobelium: return .nobelium
            case .lawrencium: return .lawrencium
            case .rutherfordium: return .rutherfordium
            case .dubnium: return .dubnium
            case .seaborgium: return .seaborgium
            case .bohrium: return .bohrium
            case .hassium: return .hassium
            case .meitnerium: return .meitnerium
            case .darmstadtium: return .darmstadtium
            case .roentgenium: return .roentgenium
            case .copernicium: return .copernicium
            case .nihonium: return .nihonium
            case .flerovium: return .flerovium
            case .moscovium: return .moscovium
            case .livermorium: return .livermorium
            case .tennessine: return .tennessine
            case .oganesson: return .oganesson
        }
    }
}
