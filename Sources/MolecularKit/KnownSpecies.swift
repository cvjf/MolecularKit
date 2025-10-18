//
//  KnownSpecies.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/17/25.
//

import SwiftUI

public struct KnownSpecies: Codable, Sendable {
    public let name: LocalizedStringResource
    public let species: Species
    
    public init(named name: LocalizedStringResource, formula: String) {
        self.name = name
        self.species = Species(formula)!
    }
}

extension KnownSpecies: Identifiable, CustomStringConvertible {
    public var id: String { name.key }
    public var description: String { species.description }
}
