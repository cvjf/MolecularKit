//
//  SpeciesTests.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/16/25.
//

import Testing
@testable import MolecularKit

@Suite("Species Tests")
struct SpeciesTests {
    @Test func singleElement() {
        let species = Species("H")
        #expect(species?.components.count == 1)
        #expect(species?.components[0].element.symbol == "H")
        #expect(species?.description == "H")
    }
        
    @Test func water() {
        let species = Species("H_2O")
        #expect(species?.components.count == 2)
        #expect(species?.components[0].element.symbol == "H")
        #expect(species?.components[0].coefficient == "2")
        #expect(species?.components[1].element.symbol == "O")
        #expect(species?.description == "H_2O")
    }
    
    @Test func sulfuricAcid() {
        let species = Species("H_2SO_4")
        #expect(species?.components.count == 3)
        #expect(species?.description == "H_2SO_4")
    }
    
    @Test func sodiumChloride() {
        let species = Species("NaCl")
        #expect(species?.components.count == 2)
        #expect(species?.description == "NaCl")
    }
    
    @Test func sulfateIon() {
        let species = Species("SO_4^2-")
        #expect(species?.components.count == 2)
        #expect(species?.components[1].coefficient == "4")
        #expect(species?.components[1].charge == "2-")
        #expect(species?.description == "SO_4^2-")
    }
    
    @Test func ammoniumIon() {
        let species = Species("NH_4^+")
        #expect(species?.components.count == 2)
        #expect(species?.description == "NH_4^+")
    }
    
    @Test func calciumPhosphate() {
        let species = Species("Ca_3PO_4")
        #expect(species?.components.count == 3)
        #expect(species?.description == "Ca_3PO_4")
    }
    
    @Test func ironIII() {
        let species = Species("Fe^3+")
        #expect(species?.components.count == 1)
        #expect(species?.components[0].charge == "3+")
        #expect(species?.description == "Fe^3+")
    }
    
    @Test func multipleIons() {
        let species = Species("Fe^3+Cl^-")
        #expect(species?.components.count == 2)
        #expect(species?.description == "Fe^3+Cl^-")
    }
    
    @Test func complexCompound() {
        let species = Species("Ca_3N_2^2-")
        #expect(species?.components.count == 2)
        #expect(species?.description == "Ca_3N_2^2-")
    }
    
    @Test func extraModifiers() {
        let species = Species("Ca_3_4N_2^2-")
        #expect(species?.components.count == 2)
        #expect(species?.description == "Ca_3N_2^2-")
    }
        
    @Test func emptyString() {
        let species = Species("")
        #expect(species == nil)
    }
    
    @Test func invalidElements() {
        let species = Species("XyZ")
        #expect(species == nil)
    }
    
    @Test func partiallyValid() {
        let species = Species("H_2Zz")
        #expect(species?.components.count == 1)
        #expect(species?.description == "H_2")
    }
    
    @Test func uniqueIDs() {
        let species1 = Species("H_2O")
        let species2 = Species("H_2O")
        #expect(species1?.id != species2?.id)
    }
}
