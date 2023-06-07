//
//  RedView.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class RedView: UIView {

    // MARK: Components
    
    private let redLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Menlo", size: 14.0)
        label.numberOfLines = 0
        label.text = """
        redView.pinTo(
            view: mainGreenView,
            width: 280,
            height: 150,
            centerX: 0,
            centerY: 0
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
        backgroundColor = .red
        self.addSubviews(redLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        redLabel.pinTo(view: self, centerX: 0, centerY: 0)
    }
    
}
