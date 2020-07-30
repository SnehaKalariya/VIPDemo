//
//  ActivityIndicating.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright © 2020 Sneha Jarsania. All rights reserved.
//

import UIKit

/// Describes an element that can show an activity indicator.
public protocol ActivityIndicating {

    /// View to use while indiating activity.
    ///
    /// - Returns: Activity indicator view.
    func activityIndicator() -> UIActivityIndicatorView

    /// Shows activity indicator.
    func showActivityIndicator(color: UIColor)

    /// Hides activity indicator.
    func hideActivityIndicator()

}

extension ActivityIndicating {

    public func activityIndicator() -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }

}
