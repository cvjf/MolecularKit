//
//  Test.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/16/25.
//

import Testing
@testable import MolecularKit

@Suite("Component Tests")
struct ComponentTests {
    @Test func elementOnly() {
        let component = Component("H")
        #expect(component != nil)
        #expect(component?.element.symbol == "H")
        #expect(component?.coefficient == nil)
        #expect(component?.charge == nil)
        #expect(component?.description == "H")
    }
    
    @Test func elementWithCoefficient() {
        let component = Component("H_2")
        #expect(component?.element.symbol == "H")
        #expect(component?.coefficient == "2")
        #expect(component?.charge == nil)
        #expect(component?.description == "H_2")
    }
    
    @Test func elementWithCharge() {
        let component = Component("Na^+")
        #expect(component?.element.symbol == "Na")
        #expect(component?.coefficient == nil)
        #expect(component?.charge == "+")
        #expect(component?.description == "Na^+")
    }
    
    @Test func elementWithNegativeCharge() {
        let component = Component("Cl^-")
        #expect(component?.element.symbol == "Cl")
        #expect(component?.charge == "-")
        #expect(component?.description == "Cl^-")
    }
    
    @Test func elementWithMultipleCharge() {
        let component = Component("Ca^2+")
        #expect(component?.element.symbol == "Ca")
        #expect(component?.charge == "2+")
        #expect(component?.description == "Ca^2+")
    }
    
    @Test func chargeSignBeforeNumber() {
        let component = Component("Ca^+2")
        #expect(component?.element.symbol == "Ca")
        #expect(component?.charge == "+2")
        #expect(component?.description == "Ca^+2")
    }
    
    @Test func elementWithCoefficientAndCharge() {
        let component = Component("O_4^2-")
        #expect(component?.element.symbol == "O")
        #expect(component?.coefficient == "4")
        #expect(component?.charge == "2-")
        #expect(component?.description == "O_4^2-")
    }
    
    @Test func chargeBeforeCoefficient() {
        let component = Component("Fe^3+_2")
        #expect(component?.element.symbol == "Fe")
        #expect(component?.coefficient == "2")
        #expect(component?.charge == "3+")
    }
    
    @Test func largeCoefficient() {
        let component = Component("H_12")
        #expect(component?.coefficient == "12")
        #expect(component?.description == "H_12")
    }
    
    @Test func negativeChargeNumber() {
        let component = Component("O_4^3-")
        #expect(component?.charge == "3-")
    }
    
    @Test func multipleModifiers() {
        let component = Component("N_3^2-")
        #expect(component?.coefficient == "3")
        #expect(component?.charge == "2-")
    }
    
    @Test func invalidElement() {
        let component = Component("Zz")
        #expect(component == nil)
    }
    
    @Test func emptyString() {
        let component = Component("")
        #expect(component == nil)
    }
    
    @Test func lowercaseOnly() {
        let component = Component("abc")
        #expect(component == nil)
    }
    
    @Test func directInitializer() {
        let component = Component(.hydrogen, coefficient: "2", charge: "+")
        #expect(component.element == .hydrogen)
        #expect(component.coefficient == "2")
        #expect(component.charge == "+")
        #expect(component.description == "H_2^+")
    }
    
    @Test func directInitializerNoModifiers() {
        let component = Component(.oxygen)
        #expect(component.element == .oxygen)
        #expect(component.coefficient == nil)
        #expect(component.charge == nil)
    }
}
