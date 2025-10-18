//
//  ChemText.swift
//  MolecularKit
//
//  Created by Jingwei Dai on 10/17/25.
//

import UIKit
import SwiftUI

struct ChemText: UIViewRepresentable {
    @Environment(\.font) private var font
    let string: String
    
    var uiFont: UIFont { font?.uiFont ?? .preferredFont(forTextStyle: .body) }
    var baselineOffset: CGFloat { font?.baselineOffset ?? -4 }
    
    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }
    
    func updateUIView(_ label: UILabel, context: Context) {
        label.attributedText = makeAttributedString()
    }
    
    func sizeThatFits(_ proposal: ProposedViewSize, uiView: UILabel, context: Context) -> CGSize? {
        let width = proposal.width ?? UIView.layoutFittingExpandedSize.width
        return uiView.sizeThatFits(CGSize(width: width, height: .infinity))
    }
    
    func renderAsImage(formula: String) -> UIImage? {
        guard let species = Species(formula) else { return nil }
        let renderer = ImageRenderer(content: SpeciesLabel(species).font(font))
        renderer.scale = UIScreen.main.scale
        return renderer.uiImage
    }
    
    func makeAttachment(formula: String) -> NSTextAttachment? {
        guard let image = renderAsImage(formula: formula) else { return nil }
        let attachment = NSTextAttachment()
        attachment.image = image
        attachment.bounds = CGRect(
            x: 0,
            y: baselineOffset,
            width: image.size.width,
            height: image.size.height
        )
        return attachment
    }
    
    private func makeAttributedString() -> NSAttributedString {
        let pattern = /\$([^$]+)\$/
        let attributed = NSMutableAttributedString(
            string: string,
            attributes: [.font: uiFont]
        )
        
        let matches = string.matches(of: pattern).reversed()
        for match in matches {
            let nsRange = NSRange(match.range, in: string)
            let formula = String(match.1)
            
            guard let attachment = makeAttachment(formula: formula) else { continue }
            attributed.replaceCharacters(in: nsRange, with: NSAttributedString(attachment: attachment))
        }
        
        return attributed
    }
}

#Preview {
    ScrollView(.vertical) {
        ChemText(string: chemicalLorem)
            .font(.largeTitle)
            .padding()
    }
}
