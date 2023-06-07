//
//  MainViewController.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class MainViewController: UIViewController {
    
    private let contentView: ContentView = {
        let view = ContentView()
        view.backgroundColor = .green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
        
    private func setupView() {
        view.backgroundColor = .systemBackground
        view.addSubview(contentView)
        addConstraints()
    }

    private func addConstraints() {
        contentView.pinToBounds(of: self.view)
    }
    
}
