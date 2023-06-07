//
//  UIViewExtension.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

extension UIView {
    
    // MARK: View Constraints
    
    public func pinToBounds(of view: UIView,
        isSafeAreaLayoutGuide: Bool = false,
        leading:  CGFloat = 0,
        trailing: CGFloat = 0,
        top:      CGFloat = 0,
        bottom:   CGFloat = 0
    ) {
        translatesAutoresizingMaskIntoConstraints = isSafeAreaLayoutGuide
        let guide = view.safeAreaLayoutGuide
        return NSLayoutConstraint.activate([
            leadingAnchor.constraint(
                equalTo: isSafeAreaLayoutGuide ? guide.leadingAnchor : view.leadingAnchor,
                constant: leading
            ),
            trailingAnchor.constraint(
                equalTo: isSafeAreaLayoutGuide ? guide.trailingAnchor : view.trailingAnchor,
                constant: -trailing
            ),
            topAnchor.constraint(
                equalTo: isSafeAreaLayoutGuide ? guide.topAnchor : view.topAnchor,
                constant: top
            ),
            bottomAnchor.constraint(
                equalTo: isSafeAreaLayoutGuide ? guide.bottomAnchor : view.bottomAnchor,
                constant: -bottom)
        ])
    }
    
    // MARK: - Add Subviews
    
    /// Adds multiple subviews in one line
    /// - Parameter views: Views to be added. Can be any number of views
    public func addSubviews(_ views: UIView...) {
        views.forEach(addSubview)
    }
    
}
