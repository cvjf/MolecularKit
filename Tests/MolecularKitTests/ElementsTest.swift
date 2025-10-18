//
//  ElementsTest.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/17/25.
//

import Testing
@testable import MolecularKit
import Foundation

@Suite("Elements Tests")
struct ElementsTest {
    @Test func basicProperties() {
        let element = Element.hydrogen
        #expect(element.symbol == "H")
        #expect(element.atomicNumber == 1)
        #expect(element.name.key == "hydrogen")
        #expect(String(localized: element.name) == "Hydrogen")
    }
}
