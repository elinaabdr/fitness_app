//
//  CalendarCollectionView.swift
//  fitness_app
//
//  Created by Элина Абдрахманова on 18.06.2023.
//

import UIKit

class CalendarCollectionView: UICollectionView {
    
    private let collectionLayout = UICollectionViewFlowLayout()
    
    private let idCalendarCell = "idCalendarCell"
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: collectionLayout)
        
        configure()
        setupLayout()
        register(CalendarCollectionViewCell.self, forCellWithReuseIdentifier: idCalendarCell)
        setDelegates()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        collectionLayout.minimumInteritemSpacing = 3
    }
    
    private func configure() {
        backgroundColor = .none
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setDelegates() {
        dataSource = self
        delegate = self
    }
}

//MARK: - UICollectionViewDataSource
extension CalendarCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idCalendarCell, for: indexPath) as?
                CalendarCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        return cell
    }
}

//MARK: - UICollectionViewDelegateFlowLayout
extension CalendarCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width / 8,
               height: collectionView.frame.height)
    }
}

//MARK: - UICollectionViewDelegate
extension CalendarCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tap collection cell", indexPath)
    }
}
