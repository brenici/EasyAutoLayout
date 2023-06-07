//
//  OrangeView.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class OrangeView: UIView {

    private let orangeLabel = CodeLabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    private func setupView() {
        backgroundColor = .orange
        orangeLabel.text = """
        orangeView.pinBelow(
            view: redView,
            height: 100,
            top: 20
        )
        """
        self.addSubviews(orangeLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        orangeLabel.pinTo(view: self, centerX: 0, centerY: 0)
    }
    
}
