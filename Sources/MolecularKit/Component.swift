//
//  Component.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/16/25.
//

import Foundation

nonisolated(unsafe) private let componentPattern = /(?<element>[A-Za-z]+)(?<modifiers>(?:[_\^][0-9+\-]+)*)/
nonisolated(unsafe) private let chargePattern = /\^(?<charge>[0-9+\-]+)/
nonisolated(unsafe) private let coefficientPattern = /_(?<coefficient>[0-9]+)/


public struct Component: Codable, CustomStringConvertible, Identifiable, Sendable {
    public let id: String
    public let element: Element
    public let coefficient: String?
    public let charge: String?
    
    public init(_ element: Element, coefficient: String? = nil, charge: String? = nil) {
        self.id = UUID().uuidString
        self.element = element
        self.coefficient = coefficient
        self.charge = charge
    }
    
    public init?(_ formula: String) {
        guard let match = formula.firstMatch(of: componentPattern) else { return nil }
        guard let element = Element(rawValue: String(match.output.element)) else { return nil }
        
        self.id = UUID().uuidString
        self.element = element
        
        let modifiers = String(match.output.modifiers)
        let charge =  modifiers.firstMatch(of: chargePattern)
            .map { String($0.charge) }
        let coefficient =  modifiers.firstMatch(of: coefficientPattern)
            .map { String($0.coefficient) }
        
        self.charge = charge
        self.coefficient = coefficient
    }
    
    public var formula: String {
        let elementSymbol = element.symbol
        let subscriptCoeff = (coefficient != nil) ? "_\(coefficient!)" : ""
        let superscriptCharge = (charge != nil) ? "^\(charge!)" : ""
        return "\(elementSymbol)\(subscriptCoeff)\(superscriptCharge)"
    }
    
    public var description: String { formula }
}
