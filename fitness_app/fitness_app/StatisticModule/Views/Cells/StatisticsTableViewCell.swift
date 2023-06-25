//
//  WorkoutTableViewCell.swift
//  fitness_app
//
//  Created by Элина Абдрахманова on 25.06.2023.
//

import UIKit

class StatisticsTableViewCell: UITableViewCell {
    
    static let idStatisticsCell = "idStatisticsCell"
    
    private let exerciseNameLabel = UILabel(text: "Biceps", font: .robotoBold24(), textColor: .specialGray)
    
    private let beforeLabel = UILabel(text: "Before: 16", font: .robotoMedium14(), textColor: .specialLightBrown)
    
    private let nowLabel = UILabel(text: "Now: 12", font: .robotoMedium14(), textColor: .specialLightBrown)
    
    private let countRepeatsLabel = UILabel(text: "+122", font: .robotoBold24(), textColor: .specialGreen)
    
    private var countSV = UIStackView()
    
    private var stackView = UIStackView()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialLine
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        countSV = UIStackView(arrangedSubviews: [beforeLabel, nowLabel],
                              axis: .horizontal,
                              spacing: 10)
        
       stackView = UIStackView(arrangedSubviews: [exerciseNameLabel, countSV],
                               axis: .vertical,
                               spacing: 1)
        
        addSubview(stackView)
        addSubview(lineView)
        addSubview(countRepeatsLabel)
    }
}

extension StatisticsTableViewCell {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            countRepeatsLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            countRepeatsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            lineView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 5),
            lineView.heightAnchor.constraint(equalToConstant: 1),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
}
