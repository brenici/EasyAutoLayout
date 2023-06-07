//
//  BlueView.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class BlueView: UIView {

    private let label = CodeLabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    private func setupView() {
        backgroundColor = .systemBlue
        label.text = """
        blueView.pinTo(
            side: .top,
            of: redView,
            height: 120,
            spacing: 20
        )
        """
        self.addSubviews(label)
        addConstraints()
    }
    
    private func addConstraints() {
        label.pinTo(view: self, centerX: 0, centerY: 0)
    }
    
}
