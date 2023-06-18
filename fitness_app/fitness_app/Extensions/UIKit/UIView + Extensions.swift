//
//  UIView + Extensions.swift
//  fitness_app
//
//  Created by Элина Абдрахманова on 18.06.2023.
//

import UIKit

extension UIView {
    func addShadowOnView() {
        layer.cornerRadius = 10
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 1
    }
}
