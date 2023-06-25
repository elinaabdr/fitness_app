//
//  WorkoutTableView.swift
//  fitness_app
//
//  Created by Элина Абдрахманова on 25.06.2023.
//

import UIKit

class StatisticsTableView: UITableView {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        configure()
        setDelegates()
        register(StatisticsTableViewCell.self, forCellReuseIdentifier: StatisticsTableViewCell.idStatisticsCell)
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
        dataSource = self
        delegate = self
    }
}

extension StatisticsTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = dequeueReusableCell(withIdentifier: StatisticsTableViewCell.idStatisticsCell, for: indexPath)
                as? StatisticsTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
}

extension StatisticsTableView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
}
