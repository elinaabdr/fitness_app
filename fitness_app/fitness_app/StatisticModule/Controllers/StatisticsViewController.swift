//
//  StatisticViewController.swift
//  fitness_app
//
//  Created by Элина Абдрахманова on 25.06.2023.
//

import UIKit

class StatisticsViewController: UIViewController {
    
    private let statisticsLabel = UILabel(text: "Statistics", font: .robotoMedium24(), textColor: .specialGray)
    
    private lazy var segmentedControl: UISegmentedControl = {
        let items = ["Неделя", "Месяц"]
        let sc = UISegmentedControl(items: items)
        sc.selectedSegmentTintColor = .specialYellow
        sc.backgroundColor = .specialGreen
        sc.selectedSegmentIndex = 0
        sc.translatesAutoresizingMaskIntoConstraints = false
        return sc
    }()
    
    private let exercisesLabel = UILabel(text: "Exercises", font: .robotoMedium14(), textColor: .specialLightBrown)
    
    private let statisticsTableView = StatisticsTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        
        view.addSubview(statisticsLabel)
        view.addSubview(segmentedControl)
        view.addSubview(exercisesLabel)
        view.addSubview(statisticsTableView)
    }
}

extension StatisticsViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            statisticsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            statisticsLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            
            segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segmentedControl.topAnchor.constraint(equalTo: statisticsLabel.bottomAnchor, constant: 20),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            exercisesLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20),
            exercisesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            exercisesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            statisticsTableView.topAnchor.constraint(equalTo: exercisesLabel.bottomAnchor, constant: 10),
            statisticsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            statisticsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            statisticsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}
