//
//  Elements.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/16/25.
//

import SwiftUI

/// Enum representing all elements of the periodic table
public enum Element: CaseIterable, Codable, Sendable {
    // Period 1
    case hydrogen
    case helium
    
    // Period 2
    case lithium
    case beryllium
    case boron
    case carbon
    case nitrogen
    case oxygen
    case fluorine
    case neon
    
    // Period 3
    case sodium
    case magnesium
    case aluminum
    case silicon
    case phosphorus
    case sulfur
    case chlorine
    case argon
    
    // Period 4
    case potassium
    case calcium
    case scandium
    case titanium
    case vanadium
    case chromium
    case manganese
    case iron
    case cobalt
    case nickel
    case copper
    case zinc
    case gallium
    case germanium
    case arsenic
    case selenium
    case bromine
    case krypton
    
    // Period 5
    case rubidium
    case strontium
    case yttrium
    case zirconium
    case niobium
    case molybdenum
    case technetium
    case ruthenium
    case rhodium
    case palladium
    case silver
    case cadmium
    case indium
    case tin
    case antimony
    case tellurium
    case iodine
    case xenon
    
    // Period 6
    case cesium
    case barium
    case lanthanum
    case cerium
    case praseodymium
    case neodymium
    case promethium
    case samarium
    case europium
    case gadolinium
    case terbium
    case dysprosium
    case holmium
    case erbium
    case thulium
    case ytterbium
    case lutetium
    case hafnium
    case tantalum
    case tungsten
    case rhenium
    case osmium
    case iridium
    case platinum
    case gold
    case mercury
    case thallium
    case lead
    case bismuth
    case polonium
    case astatine
    case radon
    
    // Period 7
    case francium
    case radium
    case actinium
    case thorium
    case protactinium
    case uranium
    case neptunium
    case plutonium
    case americium
    case curium
    case berkelium
    case californium
    case einsteinium
    case fermium
    case mendelevium
    case nobelium
    case lawrencium
    case rutherfordium
    case dubnium
    case seaborgium
    case bohrium
    case hassium
    case meitnerium
    case darmstadtium
    case roentgenium
    case copernicium
    case nihonium
    case flerovium
    case moscovium
    case livermorium
    case tennessine
    case oganesson
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
        switch self {
            case .hydrogen: return "H"
            case .helium: return "He"
            case .lithium: return "Li"
            case .beryllium: return "Be"
            case .boron: return "B"
            case .carbon: return "C"
            case .nitrogen: return "N"
            case .oxygen: return "O"
            case .fluorine: return "F"
            case .neon: return "Ne"
            case .sodium: return "Na"
            case .magnesium: return "Mg"
            case .aluminum: return "Al"
            case .silicon: return "Si"
            case .phosphorus: return "P"
            case .sulfur: return "S"
            case .chlorine: return "Cl"
            case .argon: return "Ar"
            case .potassium: return "K"
            case .calcium: return "Ca"
            case .scandium: return "Sc"
            case .titanium: return "Ti"
            case .vanadium: return "V"
            case .chromium: return "Cr"
            case .manganese: return "Mn"
            case .iron: return "Fe"
            case .cobalt: return "Co"
            case .nickel: return "Ni"
            case .copper: return "Cu"
            case .zinc: return "Zn"
            case .gallium: return "Ga"
            case .germanium: return "Ge"
            case .arsenic: return "As"
            case .selenium: return "Se"
            case .bromine: return "Br"
            case .krypton: return "Kr"
            case .rubidium: return "Rb"
            case .strontium: return "Sr"
            case .yttrium: return "Y"
            case .zirconium: return "Zr"
            case .niobium: return "Nb"
            case .molybdenum: return "Mo"
            case .technetium: return "Tc"
            case .ruthenium: return "Ru"
            case .rhodium: return "Rh"
            case .palladium: return "Pd"
            case .silver: return "Ag"
            case .cadmium: return "Cd"
            case .indium: return "In"
            case .tin: return "Sn"
            case .antimony: return "Sb"
            case .tellurium: return "Te"
            case .iodine: return "I"
            case .xenon: return "Xe"
            case .cesium: return "Cs"
            case .barium: return "Ba"
            case .lanthanum: return "La"
            case .cerium: return "Ce"
            case .praseodymium: return "Pr"
            case .neodymium: return "Nd"
            case .promethium: return "Pm"
            case .samarium: return "Sm"
            case .europium: return "Eu"
            case .gadolinium: return "Gd"
            case .terbium: return "Tb"
            case .dysprosium: return "Dy"
            case .holmium: return "Ho"
            case .erbium: return "Er"
            case .thulium: return "Tm"
            case .ytterbium: return "Yb"
            case .lutetium: return "Lu"
            case .hafnium: return "Hf"
            case .tantalum: return "Ta"
            case .tungsten: return "W"
            case .rhenium: return "Re"
            case .osmium: return "Os"
            case .iridium: return "Ir"
            case .platinum: return "Pt"
            case .gold: return "Au"
            case .mercury: return "Hg"
            case .thallium: return "Tl"
            case .lead: return "Pb"
            case .bismuth: return "Bi"
            case .polonium: return "Po"
            case .astatine: return "At"
            case .radon: return "Rn"
            case .francium: return "Fr"
            case .radium: return "Ra"
            case .actinium: return "Ac"
            case .thorium: return "Th"
            case .protactinium: return "Pa"
            case .uranium: return "U"
            case .neptunium: return "Np"
            case .plutonium: return "Pu"
            case .americium: return "Am"
            case .curium: return "Cm"
            case .berkelium: return "Bk"
            case .californium: return "Cf"
            case .einsteinium: return "Es"
            case .fermium: return "Fm"
            case .mendelevium: return "Md"
            case .nobelium: return "No"
            case .lawrencium: return "Lr"
            case .rutherfordium: return "Rf"
            case .dubnium: return "Db"
            case .seaborgium: return "Sg"
            case .bohrium: return "Bh"
            case .hassium: return "Hs"
            case .meitnerium: return "Mt"
            case .darmstadtium: return "Ds"
            case .roentgenium: return "Rg"
            case .copernicium: return "Cn"
            case .nihonium: return "Nh"
            case .flerovium: return "Fl"
            case .moscovium: return "Mc"
            case .livermorium: return "Lv"
            case .tennessine: return "Ts"
            case .oganesson: return "Og"
        }
    }
    
    public var fullName: LocalizedStringResource {
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
