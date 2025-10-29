//
//  SpeciesLabel.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/17/25.
//

import SwiftUI

public struct SpeciesLabel: View {
    let species: Species
    @Environment(\.font) private var font
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize
    
    private var scaleFactor: CGFloat { dynamicTypeSize.scale}
    private var uiFont: UIFont {
        let baseFont = font?.uiFont ?? .preferredFont(forTextStyle: .body)
        return baseFont.withSize(baseFont.pointSize * scaleFactor)
    }
    
    public init?(_ formula: String) {
        guard let species = Species(formula) else { return nil }
        self.species = species
    }
    
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
                        .font(.system(size: uiFont.pointSize, design: .monospaced))
                    
                    if component.charge != nil || component.coefficient != nil {
                        VStack(alignment: .leading, spacing: -3) {
                            Text(verbatim: component.charge ?? " ")
                            Text(verbatim: component.coefficient ?? " ")
                        }
                        .font(.system(size: uiFont.pointSize * 0.5, design: .monospaced))
                    }
                }
            }
        }
        .padding(0)
    }
}

#Preview {
    VStack {
        HStack {
            ChemText(string: "The nitrogen cycle converts ammonia ($NH_3$) into nitrite ($NO_2^-$) and then nitrate ($NO_3^-$) through beneficial bacteria.")
        }
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
