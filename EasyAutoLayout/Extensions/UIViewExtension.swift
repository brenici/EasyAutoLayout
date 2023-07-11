//
//  UIViewExtension.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

public enum ViewSide {
    case top
    case bottom
    case leading
    case trailing
}

extension UIView {
    
    // MARK: View Constraints
    
    public func pinToBounds(
        of view:  UIView,
        isSafeAreaLayoutGuide: Bool = false,
        leading:  CGFloat = 0,
        trailing: CGFloat = 0,
        top:      CGFloat = 0,
        bottom:   CGFloat = 0
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        let guide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: isSafeAreaLayoutGuide ? guide.leadingAnchor : view.leadingAnchor, constant: leading),
            trailingAnchor.constraint(equalTo: isSafeAreaLayoutGuide ? guide.trailingAnchor : view.trailingAnchor, constant: -trailing),
            topAnchor.constraint(equalTo: isSafeAreaLayoutGuide ? guide.topAnchor : view.topAnchor, constant: top),
            bottomAnchor.constraint(equalTo: isSafeAreaLayoutGuide ? guide.bottomAnchor : view.bottomAnchor, constant: -bottom)
        ])
    }
    
    public func pinTo(
        view:     UIView,
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
        NSLayoutConstraint.activate([
            width != .infinity ? widthAnchor.constraint(equalToConstant: width) : nil,
            height != .infinity ? heightAnchor.constraint(equalToConstant: height) : nil,
            leading != .infinity ? leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leading) : nil,
            trailing != .infinity ? trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -trailing) : nil,
            top != .infinity ? topAnchor.constraint(equalTo: view.topAnchor, constant: top) : nil,
            bottom != .infinity ? bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -bottom) : nil,
            centerX != .infinity ? centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: centerX) : nil,
            centerY != .infinity ? centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: centerY) : nil
        ].compactMap { $0 })
    }
    
    public func pinTo(
        side:     ViewSide,
        of view:  UIView,
        height:   CGFloat = .infinity,
        width:    CGFloat = .infinity,
        top:      CGFloat = 0,
        bottom:   CGFloat = 0,
        leading:  CGFloat = 0,
        trailing: CGFloat = 0,
        spacing:  CGFloat = 0
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        switch side {
            case .top, .bottom:
                NSLayoutConstraint.activate([
                    leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leading),
                    trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -trailing),
                    heightAnchor.constraint(equalToConstant: height != .infinity ? height : view.frame.height),
                    side == .top ? bottomAnchor.constraint(equalTo: view.topAnchor, constant: -spacing) : topAnchor.constraint(equalTo: view.bottomAnchor, constant: spacing)
                ].compactMap { $0 })
            case .leading, .trailing:
                NSLayoutConstraint.activate([
                    topAnchor.constraint(equalTo: view.topAnchor, constant: top),
                    bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -bottom),
                    widthAnchor.constraint(equalToConstant: width != .infinity ? width : view.frame.width),
                    side == .leading ? trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: -spacing) : leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: spacing)
                ].compactMap { $0 })
        }
    }
    
    // MARK: - Add Multiple Subviews
    
    /// Adds multiple subviews in one line
    /// - Parameter views: Views to be added. Can be any number of views
    public func addSubviews(_ views: UIView...) {
        views.forEach(addSubview)
    }
    
}
