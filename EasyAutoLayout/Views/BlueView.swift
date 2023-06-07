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
        blueView.pinAbove(
            view: redView,
            height: 150,
            leading: 20,
            trailing: 20,
            bottom: 20
        )
        """
        self.addSubviews(label)
        addConstraints()
    }
    
    private func addConstraints() {
        label.pinTo(view: self, centerX: 0, centerY: 0)
    }
    
}
