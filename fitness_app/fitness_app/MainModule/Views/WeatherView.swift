//
//  WeatherView.swift
//  fitness_app
//
//  Created by Элина Абдрахманова on 17.06.2023.
//

import UIKit

class WeatherView: UIView {
    
    private let weatherLabel: UILabel = {
        let label = UILabel()
        label.text = "Cолнечно"
        label.font = UIFont.robotoMedium18()
        label.textColor = .specialGray
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "sun")
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    private let descLabel: UILabel = {
        let label = UILabel()
        label.text = "Хорошая погода, чтобы позаниматься на улице"
        label.font = UIFont.robotoMedium14()
        label.textColor = .specialGray
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .white
        addShadowOnView()
        
        addSubview(weatherLabel)
        addSubview(imageView)
        addSubview(descLabel)
    }
}

extension WeatherView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            weatherLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            weatherLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
            weatherLabel.bottomAnchor.constraint(equalTo: descLabel.topAnchor, constant: -10),
            weatherLabel.trailingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -5),
            
            descLabel.topAnchor.constraint(equalTo: weatherLabel.bottomAnchor, constant: 0),
            descLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
            descLabel.trailingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -5),
            descLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            imageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8),
            imageView.widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8),
        ])
       
    }
}
