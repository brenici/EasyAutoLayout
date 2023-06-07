//
//  ContentView.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class ContentView: UIView {

    // MARK: Components

    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    private let greenLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Menlo", size: 14.0)
        label.numberOfLines = 0
        label.text = """
        greenView.pinToBounds (
            of: self.view
        )
        """
        return label
    }()
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    private let redLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Menlo", size: 14.0)
        label.numberOfLines = 0
        label.text = """
        redView.pinTo(
            view: greenView,
            width: 280,
            height: 150,
            centerX: 0,
            centerY: 0
        )
        """
        return label
    }()
    
    private let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
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
    
    private let orangeView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        return view
    }()
    
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
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 28, weight: .bold)
        label.numberOfLines = 0
        label.text = "Easy Auto Layout"
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
        backgroundColor = .systemBackground
        self.addSubviews(
            greenView, greenLabel,
            redView, redLabel,
            yellowView, yellowLabel,
            orangeView, orangeLabel,
            titleLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        
        titleLabel.pinTo(view: self, top: 80,  centerX: 0)
        
        redView.pinTo(view: self, width: 280, height: 130, centerX: 0, centerY: 0)
        redLabel.pinTo(view: redView, centerX: 0, centerY: 0)

        yellowView.pinAbove(view: redView, height: 130, leading: 20, trailing: 20, bottom: 20)
        yellowLabel.pinTo(view: yellowView, centerX: 0, centerY: 0)

        orangeView.pinBelow(view: redView, height: 100, top: 20)
        orangeLabel.pinTo(view: orangeView, centerX: 0, centerY: 0)
        
        greenLabel.pinTo(view: self, bottom: 80, centerX: 0)

    }
    
}
