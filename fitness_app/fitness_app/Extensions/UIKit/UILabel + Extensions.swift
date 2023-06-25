//
//  UILabel + Extensions.swift
//  fitness_app
//
//  Created by Элина Абдрахманова on 25.06.2023.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont?, textColor: UIColor) {
        self.init()
        
        self.text = text
        self.font = font
        self.textColor = textColor
        self.minimumScaleFactor = 0.5
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
