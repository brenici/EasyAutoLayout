//
//  RedView.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class RedView: UIView {

    private let redLabel = CodeLabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    private func setupView() {
        backgroundColor = .systemRed
        redLabel.text = """
        redView.pinTo(
            view: mainGreenView,
            width: 280,
            height: 150,
            centerX: 0,
            centerY: 0
        )
        """
        self.addSubviews(redLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        redLabel.pinTo(view: self, centerX: 0, centerY: 0)
    }
    
}
