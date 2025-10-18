//
//  SpeciesLabel.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/17/25.
//

import SwiftUI

private extension EnvironmentValues {
    @Entry var speciesFontSize: CGFloat = 17
}

public struct SpeciesLabel: View {
    let species: Species
    @Environment(\.speciesFontSize) var size
    
    public init(_ species: Species) {
        self.species = species
    }
    
    public init(_ knownSpecies: KnownSpecies){
        self.species = knownSpecies.species
    }
    
    public var body: some View {
        HStack(spacing: 0) {
            ForEach(species.components, id: \.element.symbol) { component in
                HStack(spacing: 0) {
                    Text(verbatim: component.element.symbol)
                        .font(.system(size: size, design: .monospaced))
                    
                    if component.charge != nil || component.coefficient != nil {
                        VStack(alignment: .leading, spacing: -2) {
                            Text(verbatim: component.charge ?? " ")
                            Text(verbatim: component.coefficient ?? " ")
                        }
                        .font(.system(size: size * 0.55, design: .monospaced))
                    }
                }
            }
        }
    }
}

public extension View {
    func speciesFontSize(_ size: CGFloat) -> some View {
        environment(\.speciesFontSize, size)
    }
}


#Preview {
    VStack {
        HStack {
            SpeciesLabel(.nitrite)
            SpeciesLabel(.init("H_2^2++")!)
            SpeciesLabel(.ammonia)
            SpeciesLabel(.boron)
            Text("Hahaha")
            SpeciesLabel(.silicate)
        }
        HStack {
            SpeciesLabel(.nitrate)
            SpeciesLabel(.init("H_2^2++++")!)
            SpeciesLabel(.ammonia)
            SpeciesLabel(.boron)
            SpeciesLabel(.silicate)
        }
        HStack {
            Text("Hahaha")
            SpeciesLabel(.init("H_2^2++++")!)
        }
        HStack {
            SpeciesLabel(.nitrate)
            SpeciesLabel(.init("H_2^2++++")!)
            SpeciesLabel(.ammonia)
            SpeciesLabel(.boron)
            SpeciesLabel(.silicate)
        }
        HStack {
            SpeciesLabel(.nitrate)
            SpeciesLabel(.init("H_2^234")!)
            SpeciesLabel(.ammonia)
            SpeciesLabel(.boron)
            SpeciesLabel(.silicate)
        }
    }
}
