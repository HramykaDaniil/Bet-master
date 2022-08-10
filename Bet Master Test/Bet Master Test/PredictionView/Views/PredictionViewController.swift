//
//  PredictionViewController.swift
//  Bet Master Test
//
//  Created by Daniil on 2.08.22.
//

import UIKit

class PredictionViewController: UIViewController, UICollectionViewDelegateFlowLayout {
    
    let layout = UICollectionViewFlowLayout()
    lazy var predictionCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    
    var cells = [Match]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .lightGreen
        
        title = "Prediction"
       
        setNavigationControllerApearance()
        
        view.addSubview(predictionCollectionView)
        
        self.predictionCollectionView.dataSource = self
        self.predictionCollectionView.delegate = self
        
        self.predictionCollectionView.register(MatchCell.self, forCellWithReuseIdentifier: MatchCell.reuseId)
        self.predictionCollectionView.register(SubscribeCell.self, forCellWithReuseIdentifier: SubscribeCell.reuseId)
        
        self.predictionCollectionView.backgroundColor = UIColor.deepGreen
        
        self.predictionCollectionView.contentInset = UIEdgeInsets(top: 20, left: Constants.leftDistanceToView, bottom: 10, right: Constants.rightDistanceToView)
        self.predictionCollectionView.showsHorizontalScrollIndicator = false
        self.predictionCollectionView.showsVerticalScrollIndicator = false
        
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 25, left: 0, bottom: 10, right: 0)
        layout.minimumLineSpacing = Constants.listMinimumLineSpacing
        layout.itemSize = CGSize(width: 370, height: 140)
        
        predictionCollectionView.translatesAutoresizingMaskIntoConstraints = false
        predictionCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        predictionCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        predictionCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        predictionCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        set(cells: Match.setup())
    
    }
    
    private func setNavigationControllerApearance() {
        
        navigationController?.navigationBar.backgroundColor = UIColor.lightGreen
        navigationController?.navigationBar.tintColor = UIColor.niceWhite
        navigationController?.navigationBar.barTintColor = UIColor.lightGreen
        
        navigationItem.titleView = UIImageView.init(image: UIImage(named:"sigmasports"))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "switch.2"),
            style: .plain,
            target: self,
            action: nil
            
        )
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "questionmark"),
            style: .plain,
            target: self,
            action: nil
        )
        
    }
    
}

extension PredictionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           print("Collection view at row \(collectionView.tag) selected index path \(indexPath)")
       }
}

extension PredictionViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 {
            
            let matchCell = predictionCollectionView.dequeueReusableCell(withReuseIdentifier: MatchCell.reuseId, for: indexPath) as! MatchCell
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
            
            let subscribeCell = predictionCollectionView.dequeueReusableCell(withReuseIdentifier: SubscribeCell.reuseId, for: indexPath) as! SubscribeCell
            subscribeCell.subscribeButton.addTarget(self, action: #selector(showSubscriptionViewController), for: .touchUpInside)
            
            return subscribeCell

        }
       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return cells.count
        } else {
            return 1
        }
    }
    
    func set(cells: [Match]) {
        self.cells = cells
    }
    
    @objc func showSubscriptionViewController() {
        let subscribtionScreenViewController: SubscriptionScreenViewController = SubscriptionScreenViewController()
        present(subscribtionScreenViewController, animated: true, completion: nil)
    }
}
