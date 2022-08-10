//
//  MatchCell.swift
//  Bet Master Test
//
//  Created by Daniil on 3.08.22.
//

import UIKit

class MatchCell: UICollectionViewCell {
    
    static let reuseId = "MatchCell"
    
    let leagueLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        label.textColor = UIColor.lightGreen
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let statusLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = UIColor.lightGreen
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let club1Label: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 18, weight: .heavy)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let club2Label: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 18, weight: .heavy)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let scoreLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 35, weight: .medium)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let scoreBeforeForecastLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let timeLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let totalScoreButton: UIButton = {
        let button = UIButton()
        
        button.setTitleColor(.deepGreen, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13)
        button.backgroundColor = UIColor.veryLightGreen
        button.translatesAutoresizingMaskIntoConstraints = false
        
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(leagueLabel)
        addSubview(statusLabel)
        addSubview(club1Label)
        addSubview(club2Label)
        addSubview(scoreLabel)
        addSubview(scoreBeforeForecastLabel)
        addSubview(timeLabel)
        addSubview(totalScoreButton)
        
        backgroundColor = .niceWhite
        
        leagueLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        leagueLabel.topAnchor.constraint(equalTo: topAnchor, constant: 11).isActive = true
        
        statusLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        statusLabel.topAnchor.constraint(equalTo: topAnchor, constant: 11).isActive = true
        
        club1Label.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        club1Label.topAnchor.constraint(equalTo: leagueLabel.topAnchor, constant: 30).isActive = true
        
        club2Label.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        club2Label.topAnchor.constraint(equalTo: club1Label.topAnchor, constant: 20).isActive = true
        
        scoreLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        scoreLabel.topAnchor.constraint(equalTo: club1Label.topAnchor).isActive = true
        scoreLabel.bottomAnchor.constraint(equalTo: club2Label.bottomAnchor).isActive = true
        
        scoreBeforeForecastLabel.leftAnchor.constraint(equalTo: club1Label.leftAnchor).isActive = true
        scoreBeforeForecastLabel.topAnchor.constraint(equalTo: club2Label.topAnchor, constant: 30).isActive = true
        
        timeLabel.rightAnchor.constraint(equalTo: scoreLabel.rightAnchor).isActive = true
        timeLabel.topAnchor.constraint(equalTo: scoreBeforeForecastLabel.topAnchor).isActive = true
        
        totalScoreButton.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        totalScoreButton.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        totalScoreButton.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 10
        
        self.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
