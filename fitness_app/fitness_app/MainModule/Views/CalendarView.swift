//
//  CalendarView.swift
//  fitness_app
//
//  Created by Элина Абдрахманова on 17.06.2023.
//

import UIKit

class CalendarView: UIView {

    private let collectionView = CalendarCollectionView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = . specialGreen
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(collectionView)
    }
}

extension CalendarView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 105)
        ])
    }
}
