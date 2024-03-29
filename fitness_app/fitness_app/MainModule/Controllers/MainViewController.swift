//
//  ViewController.swift
//  fitness_app
//
//  Created by Элина Абдрахманова on 17.06.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    private let userPhotoImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = #colorLiteral(red: 0.7607844472, green: 0.7607844472, blue: 0.7607844472, alpha: 1)
        iv.layer.borderColor = UIColor.white.cgColor
        iv.layer.borderWidth = 5
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    private let calendarView = CalendarView()
    
    private let userLabel = UILabel(text: "Your name", font: .robotoMedium24(), textColor: .specialGray)
    
    private lazy var addWorkoutButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .specialYellow
        btn.layer.cornerRadius = 10
        btn.setTitle("Add workout", for: .normal)
        btn.setImage(UIImage(named: "plus"), for: .normal)
        btn.tintColor = .specialDarkGreen
        btn.imageEdgeInsets = .init(top: 0,
                                    left: 20,
                                    bottom: 15,
                                    right: 0)
        btn.titleEdgeInsets = .init(top: 50,
                                    left: -40,
                                    bottom: 0,
                                    right: 0)
        btn.titleLabel?.font = .robotoMedium12()
        btn.addTarget(self, action: #selector(addWorkoutButtonTapped), for: .touchUpInside)
        btn.addShadowOnView()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let weatherView = WeatherView()
    
    private let workoutTodayLabel = UILabel(text: "Workout today", font: .robotoMedium14(), textColor: .specialLightBrown)
    
    private let tableView = MainTableView()
    
    override func viewDidLayoutSubviews() {
        userPhotoImageView.layer.cornerRadius = userPhotoImageView.frame.width / 2
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        
        view.addSubview(calendarView)
        view.addSubview(userPhotoImageView)
        view.addSubview(userLabel)
        view.addSubview(addWorkoutButton)
        view.addSubview(weatherView)
        view.addSubview(workoutTodayLabel)
        view.addSubview(tableView)
    }
    
    @objc private func addWorkoutButtonTapped() {
        
    }
}


//MARK: - set constraints
extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            userPhotoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            userPhotoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            userPhotoImageView.widthAnchor.constraint(equalToConstant: 100),
            userPhotoImageView.heightAnchor.constraint(equalToConstant: 100),
            
            calendarView.topAnchor.constraint(equalTo: userPhotoImageView.centerYAnchor),
            calendarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            calendarView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            calendarView.heightAnchor.constraint(equalToConstant: 70),
            
            userLabel.bottomAnchor.constraint(equalTo: calendarView.topAnchor, constant: -10),
            userLabel.leadingAnchor.constraint(equalTo: userPhotoImageView.trailingAnchor, constant: 5),
            userLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            addWorkoutButton.topAnchor.constraint(equalTo: calendarView.bottomAnchor, constant: 5),
            addWorkoutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            addWorkoutButton.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
            addWorkoutButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
            
            weatherView.topAnchor.constraint(equalTo: calendarView.bottomAnchor, constant: 5),
            weatherView.leadingAnchor.constraint(equalTo: addWorkoutButton.trailingAnchor, constant: 10),
            weatherView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            weatherView.heightAnchor.constraint(equalToConstant: 80),
            
            workoutTodayLabel.topAnchor.constraint(equalTo: addWorkoutButton.bottomAnchor, constant: 10),
            workoutTodayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            
            tableView.topAnchor.constraint(equalTo: workoutTodayLabel.bottomAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}

