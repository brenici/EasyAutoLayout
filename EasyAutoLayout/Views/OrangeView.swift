//
//  OrangeView.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class OrangeView: UIView {

    // MARK: Components
    
    private let orangeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Menlo", size: 14.0)
        label.numberOfLines = 0
        label.text = """
        orangeView.pinBelow(
            view: redView,
            height: 100,
            top: 20
        )
        """
        return label
    }()
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    // MARK: Setup view
    
    private func setupView() {
        backgroundColor = .orange
        self.addSubviews(orangeLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        orangeLabel.pinTo(view: self, centerX: 0, centerY: 0)
    }
    
}
