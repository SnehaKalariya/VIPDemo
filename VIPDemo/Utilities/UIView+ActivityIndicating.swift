//
//  UIView+ActivityIndicating.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright © 2020 Sneha Jarsania. All rights reserved.
//

import UIKit

extension UIView: ActivityIndicating {

    /// Shows activity indicator in view givne a theme.
 
    open func showActivityIndicator() {
        let color: UIColor = .darkGray

        showActivityIndicator(color: color)
    }

    open func showActivityIndicator(color: UIColor) {
        let indicator = activityIndicator()

        indicator.color = color
        indicator.translatesAutoresizingMaskIntoConstraints = false

        addSubview(indicator)
        bringSubviewToFront(indicator)

        indicator.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        indicator.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true

        indicator.startAnimating()
    }

    open func hideActivityIndicator() {
        DispatchQueue.main.async {
            for view in self.subviews {
                if let view = view as? UIActivityIndicatorView {
                    view.stopAnimating()
                    view.removeFromSuperview()
                    break
                }
            }
        }
        
    }

}

