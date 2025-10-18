//
//  Font+.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/17/25.
//

import SwiftUI

internal let chemicalLorem = "Stony corals like Acropora require alkalinity maintained between 8-12 dKH using sodium bicarbonate ($NaHCO_3$) or carbonate (no $Na_2CO_3$ yes) buffers. Now we need to talk about ($PO_4^3-$) Zooxanthellae produce oxygen ($O_2$) while consuming carbon dioxide ($CO_2$), creating a symbiotic relationship that powers coral calcification. Maintain phosphate ($PO_4^3-$) between 0.03-0.08 ppm and nitrate ($NO_3^-$) below 20 ppm to prevent algae blooms while supporting coral tissue growth in your reef system."

extension Font {
    var uiFont: UIFont {
        switch self {
            case .largeTitle:
                return .preferredFont(forTextStyle: .largeTitle)
            case .title:
                return .preferredFont(forTextStyle: .title1)
            case .title2:
                return .preferredFont(forTextStyle: .title2)
            case .title3:
                return .preferredFont(forTextStyle: .title3)
            case .headline:
                return .preferredFont(forTextStyle: .headline)
            case .subheadline:
                return .preferredFont(forTextStyle: .subheadline)
            case .body:
                return .preferredFont(forTextStyle: .body)
            case .callout:
                return .preferredFont(forTextStyle: .callout)
            case .footnote:
                return .preferredFont(forTextStyle: .footnote)
            case .caption:
                return .preferredFont(forTextStyle: .caption1)
            case .caption2:
                return .preferredFont(forTextStyle: .caption2)
            default:
                return .preferredFont(forTextStyle: .body)
        }
    }
    
    var baselineOffset: CGFloat {
        switch self {
            case .largeTitle:
                return -9
            case .title:
                return -7
            case .title2:
                return -6
            case .title3:
                return -5
            case .headline:
                return -4
            case .subheadline:
                return -4
            case .body:
                return -4
            case .callout:
                return -4
            case .footnote:
                return -4
            case .caption:
                return -3.5
            case .caption2:
                return -3
            default:
                return -4
        }
    }
}

#Preview {
    ScrollView(.vertical) {
        VStack(alignment: .leading, spacing: 20) {
            ChemText(string: chemicalLorem)
        }
        .font(.body)
        .padding()
    }
}
