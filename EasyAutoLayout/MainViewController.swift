//
//  MainViewController.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: Components

    private let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: Setup View
    
    private func setupView() {
        view.backgroundColor = .systemBackground
        view.addSubviews(containerView)
        addConstraints()
    }
    
    private func addConstraints() {
        containerView.pinToBounds(of: self.view)
    }

}
