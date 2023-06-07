//
//  MainViewController.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class MainViewController: UIViewController {
    
    private let mainGreenView = MainGreenView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
        
    private func setupView() {
        view.backgroundColor = .systemBackground
        view.addSubview(mainGreenView)
        addConstraints()
    }

    private func addConstraints() {
        mainGreenView.pinToBounds(of: self.view)
    }
    
}
