//
//  PredictionViewController.swift
//  Bet Master Test
//
//  Created by Daniil on 2.08.22.
//

import UIKit

class PredictionViewController: UIViewController, UICollectionViewDelegate{
    
    lazy var predictionCollectionView = PredictionCollectionView()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .lightGreen
        
        title = "Prediction"
       
        setNavigationControllerApearance()
        
        view.addSubview(predictionCollectionView)
        
        predictionCollectionView.translatesAutoresizingMaskIntoConstraints = false
        predictionCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        predictionCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        predictionCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        predictionCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        predictionCollectionView.set(cells: Match.setup())
    
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SubscribeCell, for: <#T##IndexPath#>)
    }
    
    
    @objc func showSubscriptionViewController() {
        let subscribtionScreenViewController: SubscriptionScreenViewController = SubscriptionScreenViewController()
        present(subscribtionScreenViewController, animated: true, completion: nil)
    }
}
