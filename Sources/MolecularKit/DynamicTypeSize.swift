//
//  DynamicTypeSize.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/18/25.
//

import SwiftUI

extension DynamicTypeSize {
    var scale: CGFloat {
        switch self {
            case .xSmall: return 0.8
            case .small: return 0.85
            case .medium: return 0.9
            case .large: return 1.0  // Default
            case .xLarge: return 1.1
            case .xxLarge: return 1.2
            case .xxxLarge: return 1.3
            case .accessibility1: return 1.4
            case .accessibility2: return 1.5
            case .accessibility3: return 1.6
            case .accessibility4: return 1.7
            case .accessibility5: return 1.8
            @unknown default: return 1.0
        }
    }
}
