//
//  PredictionCollectionView.swift
//  Bet Master Test
//
//  Created by Daniil on 3.08.22.
//

import UIKit

class PredictionCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
 
    var cells = [Match]()
    
    init() {
        
        let layout = UICollectionViewFlowLayout()
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = UIColor.deepGreen
        
        delegate = self
        dataSource = self
        
        register(MatchCell.self, forCellWithReuseIdentifier: MatchCell.reuseId)
        register(SubscribeCell.self, forCellWithReuseIdentifier: SubscribeCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = Constants.listMinimumLineSpacing
        contentInset = UIEdgeInsets(top: 20, left: Constants.leftDistanceToView, bottom: 10, right: Constants.rightDistanceToView)
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        
    }
    
    func set(cells: [Match]) {
        self.cells = cells
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 2
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return cells.count
        } else {
            return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 {
            
            let matchCell = dequeueReusableCell(withReuseIdentifier: MatchCell.reuseId, for: indexPath) as! MatchCell
            matchCell.leagueLabel.text = cells[indexPath.row].league
            matchCell.statusLabel.text = cells[indexPath.row].status
            matchCell.club1Label.text = cells[indexPath.row].team1
            matchCell.club2Label.text = cells[indexPath.row].team2
            matchCell.scoreLabel.text = cells[indexPath.row].score
            matchCell.scoreBeforeForecastLabel.text = cells[indexPath.row].scoreBeforeForecast
            matchCell.timeLabel.text = cells[indexPath.row].time
            matchCell.totalScoreButton.setTitle(cells[indexPath.row].totalScore, for: .normal)
            
            return matchCell
            
        } else {
            
            let subscribeCell = dequeueReusableCell(withReuseIdentifier: SubscribeCell.reuseId, for: indexPath) as! SubscribeCell
            
            return subscribeCell

        }
       
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 370, height: 140)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 25, left: 0, bottom: 0, right: 0)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
