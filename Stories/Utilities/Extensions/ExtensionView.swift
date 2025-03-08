//
//  ExtensionView.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import SwiftUI

extension View {
    /// Wraps a SwiftUI View into a UIViewController.
    public var viewController: UIViewController {
        UIHostingController(rootView: self)
    }
}
