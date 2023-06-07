//
//  YellowView.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class YellowView: UIView {

    // MARK: Components
    private let yellowLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Menlo", size: 14.0)
        label.numberOfLines = 0
        label.text = """
        yellowView.pinAbove(
            view: redView,
            height: 150,
            leading: 20,
            trailing: 20,
            bottom: 20
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
        backgroundColor = .yellow
        self.addSubviews(yellowLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        yellowLabel.pinTo(view: self, centerX: 0, centerY: 0)
    }
    
}
