//
//  MainGreenView.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class MainGreenView: UIView {
    
    private let redView = RedView()
    private let blueView = BlueView()
    private let orangeView = OrangeView()
    private let greenViewLabel = CodeLabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    private func setupView() {
        backgroundColor = .systemGreen
        greenViewLabel.text = """
        mainGreenView.pinToBounds (
            of: self.view
        )
        """
        self.addSubviews(redView, blueView, orangeView, greenViewLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        redView.pinTo(view: self, width: 280, height: 130, centerX: 0, centerY: 0)
        blueView.pinAbove(view: redView, height: 130, leading: 20, trailing: 20, spacing: 20)
//        blueView.pinTrailing(view: redView, width: 280, spacing: 20)
//        blueView.pinLeading(view: redView, width: 280, spacing: 20)
        orangeView.pinBelow(view: redView, height: 100, spacing: 20)
        greenViewLabel.pinTo(view: self, bottom: 80, centerX: 0)
    }
    
}
