//
//  YellowView.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class YellowView: UIView {

    private let yellowLabel = CodeLabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    private func setupView() {
        backgroundColor = .yellow
        yellowLabel.text = """
        yellowView.pinAbove(
            view: redView,
            height: 150,
            leading: 20,
            trailing: 20,
            bottom: 20
        )
        """
        self.addSubviews(yellowLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        yellowLabel.pinTo(view: self, centerX: 0, centerY: 0)
    }
    
}
