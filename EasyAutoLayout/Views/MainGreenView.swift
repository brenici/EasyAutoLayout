//
//  MainGreenView.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class MainGreenView: UIView {

    // MARK: Components
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 28, weight: .bold)
        label.numberOfLines = 0
        label.text = "Easy Auto Layout"
        return label
    }()
    
    private let redView = RedView()
    private let yellowView = YellowView()
    private let orangeView = OrangeView()
    
    private let greenViewLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Menlo", size: 14.0)
        label.numberOfLines = 0
        label.text = """
        mainGreenView.pinToBounds (
            of: self.view
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
        backgroundColor = .green
        self.addSubviews(titleLabel, redView, yellowView, orangeView, greenViewLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        titleLabel.pinTo(view: self, top: 80,  centerX: 0)
        redView.pinTo(view: self, width: 280, height: 130, centerX: 0, centerY: 0)
        yellowView.pinAbove(view: redView, height: 130, leading: 20, trailing: 20, bottom: 20)
        orangeView.pinBelow(view: redView, height: 100, top: 20)
        greenViewLabel.pinTo(view: self, bottom: 80, centerX: 0)
    }
    
}
