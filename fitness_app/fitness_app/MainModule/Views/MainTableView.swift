//
//  MainTableView.swift
//  fitness_app
//
//  Created by Элина Абдрахманова on 25.06.2023.
//

import UIKit

class MainTableView: UITableView {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        configure()
        setDelegates()
        register(WorkoutTableViewCell.self, forCellReuseIdentifier: WorkoutTableViewCell.idTableViewCell)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .none
        separatorStyle = .none
        bounces = false
        showsVerticalScrollIndicator = false
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setDelegates() {
        delegate = self
        dataSource = self
    }
}


//MARK: - UITableViewDataSource
extension MainTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = dequeueReusableCell(withIdentifier: WorkoutTableViewCell.idTableViewCell,
                                             for: indexPath) as? WorkoutTableViewCell else {
            return UITableViewCell() }
        
        return cell
    }
}

//MARK: - UITableViewDelegate
extension MainTableView :UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
