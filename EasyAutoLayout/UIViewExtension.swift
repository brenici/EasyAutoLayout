//
//  UIViewExtension.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

extension UIView {
    
    // MARK: View Constraints
    
    public func pinToBounds( of view: UIView,
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
    
    public func pinTo( view:  UIView,
        width:    CGFloat = .infinity,
        height:   CGFloat = .infinity,
        leading:  CGFloat = .infinity,
        trailing: CGFloat = .infinity,
        top:      CGFloat = .infinity,
        bottom:   CGFloat = .infinity,
        centerX:  CGFloat = .infinity,
        centerY:  CGFloat = .infinity
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        if width != .infinity {
            constraints.append(widthAnchor.constraint(equalToConstant: width))
        }
        if height != .infinity {
            constraints.append(heightAnchor.constraint(equalToConstant: height))
        }
        if leading != .infinity {
            constraints.append(leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leading))
        }
        if trailing != .infinity {
            constraints.append(trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -trailing))
        }
        if top != .infinity {
            constraints.append(topAnchor.constraint(equalTo: view.topAnchor, constant: top))
        }
        if bottom != .infinity {
            constraints.append(bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -bottom))
        }
        if centerX != .infinity {
            constraints.append(centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: centerX))
        }
        if centerY != .infinity {
            constraints.append(centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: centerY))
        }
        NSLayoutConstraint.activate(constraints)
    }
    
    // MARK: - Add Subviews
    
    /// Adds multiple subviews in one line
    /// - Parameter views: Views to be added. Can be any number of views
    public func addSubviews(_ views: UIView...) {
        views.forEach(addSubview)
    }
    
}
