//
//  SubscriptionViewController.swift
//  Bet Master Test
//
//  Created by Daniil on 2.08.22.
//

import UIKit

class SubscriptionViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 25)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = """
        Subscription
        Management
        """
        label.textColor = .niceWhite
        label.textAlignment = .center
        label.layer.borderColor = UIColor.niceWhite.cgColor
        label.layer.borderWidth = 3
        label.layer.cornerRadius = 30
        label.translatesAutoresizingMaskIntoConstraints = false
       
        return label
        
    }()
    
    let threeMonthsLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 25)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = """
        3
        months
        $9.99
        """
        label.textColor = .niceWhite
        label.textAlignment = .center
        label.layer.borderColor = UIColor.niceWhite.cgColor
        label.layer.borderWidth = 3
        label.layer.cornerRadius = 10
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
        
    }()
    
    let oneYearLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 25)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = """
        1
        year
        $20.99
        """
        label.textColor = .niceWhite
        label.textAlignment = .center
        label.layer.borderColor = UIColor.niceWhite.cgColor
        label.layer.borderWidth = 3
        label.layer.cornerRadius = 10
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
        
    }()
    
    let sixMonthsLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 25)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = """
        6
        months
        $17.99
        """
        label.textColor = .niceWhite
        label.textAlignment = .center
        label.layer.borderColor = UIColor.niceWhite.cgColor
        label.layer.borderWidth = 3
        label.layer.cornerRadius = 10
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    let bestValueLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "Best Value"
        label.textColor = .black
        label.textAlignment = .center
        //label.backgroundColor = .niceWhite
        label.backgroundColor = .niceWhite
        label.layer.borderColor = UIColor.niceWhite.cgColor
        label.layer.borderWidth = 3
        label.layer.cornerRadius = 10
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    let trialPeriodLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Trial period: 7 days for FREE"
        label.textColor = .niceWhite
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    let continueButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(.niceWhite, for: .normal)
        button.tintColor = .systemRed
        button.backgroundColor = .systemRed
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(showSubscriptionViewController), for: .touchUpInside)
        
        return button
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        
        view.addSubview(titleLabel)
        view.addSubview(threeMonthsLabel)
        view.addSubview(oneYearLabel)
        view.addSubview(sixMonthsLabel)
        view.addSubview(bestValueLabel)
        view.addSubview(trialPeriodLabel)
        view.addSubview(continueButton)
        
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        threeMonthsLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        threeMonthsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        threeMonthsLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        threeMonthsLabel.widthAnchor.constraint(equalToConstant: 115 ).isActive = true
        
        oneYearLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        oneYearLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -10).isActive = true
        oneYearLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        oneYearLabel.widthAnchor.constraint(equalToConstant: 115 ).isActive = true
        
        sixMonthsLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        sixMonthsLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        sixMonthsLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        sixMonthsLabel.widthAnchor.constraint(equalToConstant: 115 ).isActive = true
        
        bestValueLabel.topAnchor.constraint(equalTo: oneYearLabel.bottomAnchor, constant: 20).isActive = true
        bestValueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bestValueLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        bestValueLabel.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        trialPeriodLabel.topAnchor.constraint(equalTo: bestValueLabel.bottomAnchor, constant: 20).isActive = true
        trialPeriodLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        continueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        continueButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        continueButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        continueButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
         
    }
    
    @objc func showSubscriptionViewController() {
        let subscribtionScreenViewController: SubscriptionScreenViewController = SubscriptionScreenViewController()
        present(subscribtionScreenViewController, animated: true, completion: nil)
    }
    
    

}
