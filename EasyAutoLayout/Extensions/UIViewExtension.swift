//
//  UIViewExtension.swift
//  EasyAutoLayout
//
//  Created by Emilian Brenici on 07/06/2023.
//

import UIKit

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
        translatesAutoresizingMaskIntoConstraints = isSafeAreaLayoutGuide
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
    
    public func pinAbove(
        view:     UIView,
        height:   CGFloat = .infinity,
        leading:  CGFloat = 0,
        trailing: CGFloat = 0,
        spacing:  CGFloat = 0
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leading),
            trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -trailing),
            bottomAnchor.constraint(equalTo: view.topAnchor, constant: -spacing),
            height != .infinity ? heightAnchor.constraint(equalToConstant: height) : nil
        ].compactMap { $0 })
    }
    
    public func pinBelow(
        view:     UIView,
        height:   CGFloat = .infinity,
        leading:  CGFloat = 0,
        trailing: CGFloat = 0,
        spacing:  CGFloat = 0
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leading),
            trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -trailing),
            topAnchor.constraint(equalTo: view.bottomAnchor, constant: spacing),
            height != .infinity ? heightAnchor.constraint(equalToConstant: height) : nil
        ].compactMap { $0 })
    }
    
    public func pinLeading(
        view:     UIView,
        width:    CGFloat = .infinity,
        top:      CGFloat = 0,
        bottom:   CGFloat = 0,
        spacing:  CGFloat = 0
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor, constant: top),
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -bottom),
            trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: -spacing),
            width != .infinity ? widthAnchor.constraint(equalToConstant: width) : nil
        ].compactMap { $0 })
    }
    
    public func pinTrailing(
        view:     UIView,
        width:    CGFloat = .infinity,
        top:      CGFloat = 0,
        bottom:   CGFloat = 0,
        spacing:  CGFloat = 0
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor, constant: top),
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -bottom),
            leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: spacing),
            width != .infinity ? widthAnchor.constraint(equalToConstant: width) : nil
        ].compactMap { $0 })
    }
    
    // MARK: - Add Multiple Subviews
    
    /// Adds multiple subviews in one line
    /// - Parameter views: Views to be added. Can be any number of views
    public func addSubviews(_ views: UIView...) {
        views.forEach(addSubview)
    }
    
}
