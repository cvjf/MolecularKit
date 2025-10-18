//
//  Species.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/16/25.
//

import SwiftUI

nonisolated(unsafe) private let speciesPattern = /[A-Z][^A-Z]*/

public struct Species: Codable, CustomStringConvertible, Identifiable, Sendable {
    public let id: String
    public let components: [Component]
    
    public init?(_ formula: String) {
        let tokens = formula.matches(of: speciesPattern).map { String($0.output) }
        guard !tokens.isEmpty else { return nil }
        
        let components = tokens.compactMap { Component($0) }
        guard !components.isEmpty else { return nil }
        
        self.id = UUID().uuidString
        self.components = components
    }
    
    public var formula: String {
        components.map { $0.formula }.joined()
    }
    
    public var description: String { formula }
}
