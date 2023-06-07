//
//  CodeLabel.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

class CodeLabel: UILabel {

    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = UIFont(name: "Menlo", size: 14.0)
        numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
    
}
