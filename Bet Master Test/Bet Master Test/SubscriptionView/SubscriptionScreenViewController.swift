//
//  SubscriptionScreenViewController.swift
//  Bet Master Test
//
//  Created by Daniil on 9.08.22.
//

import UIKit

class SubscriptionScreenViewController: UIViewController {
    
    let mainImage: UIImageView = {
        let image = UIImage(named: "slots")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let closeButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "clear")
        button.setImage(image, for: .normal)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let descriptionView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        
        let upgradeLabel = UILabel()
        
        upgradeLabel.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        upgradeLabel.text = "Upgrade to Premium"
        upgradeLabel.textColor = .black
        upgradeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let motivationLabel = UILabel()
        
        motivationLabel.font = UIFont.systemFont(ofSize: 18)
        motivationLabel.text = "Go premium and unlock more features now"
        motivationLabel.textColor = .black
        motivationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let premiumLabel = UILabel()
        
        premiumLabel.font = UIFont.systemFont(ofSize: 18)
        premiumLabel.lineBreakMode = .byWordWrapping
        premiumLabel.numberOfLines = 0
        premiumLabel.text = """
        Full acces to all predictions
        Without advertising
        Without advertising
        """
        premiumLabel.textAlignment = .center
        premiumLabel.textColor = .black
        premiumLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(upgradeLabel)
        view.addSubview(motivationLabel)
        view.addSubview(premiumLabel)
        
        upgradeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 13).isActive = true
        upgradeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        motivationLabel.topAnchor.constraint(equalTo: upgradeLabel.bottomAnchor, constant: 30).isActive = true
        motivationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        premiumLabel.topAnchor.constraint(equalTo: motivationLabel.bottomAnchor, constant: 20).isActive = true
        premiumLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        return view
    }()
    
    let subscriptionWithDescriptionButtonView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        
        let subscribeButton = UIButton()
        subscribeButton.backgroundColor = .systemRed
        subscribeButton.layer.cornerRadius = 10
        subscribeButton.translatesAutoresizingMaskIntoConstraints = false
        
        let trialPeriodLabel = UILabel()
        trialPeriodLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        trialPeriodLabel.text = "3 days free"
        trialPeriodLabel.textColor = .niceWhite
        trialPeriodLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let costLabel = UILabel()
        costLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        costLabel.text = "$ 5.99"
        costLabel.textColor = .niceWhite
        costLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let periodLabel = UILabel()
        periodLabel.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        periodLabel.text = "3 months"
        periodLabel.textColor = .niceWhite
        periodLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(subscribeButton)
        view.addSubview(trialPeriodLabel)
        view.addSubview(costLabel)
        view.addSubview(periodLabel)
        
        subscribeButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        subscribeButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        subscribeButton.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        subscribeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        trialPeriodLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
        trialPeriodLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
        
        costLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
        costLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5).isActive = true
        
        periodLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5).isActive = true
        periodLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
        periodLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5).isActive = true
   
        return view
        
    }()
    
    let privacyPolicyButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Privacy Policy", for: .normal)
        button.setTitleColor(UIColor.lightGreen, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.backgroundColor = .niceWhite
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let usagePolicyButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Usage Policy", for: .normal)
        button.setTitleColor(UIColor.lightGreen, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.backgroundColor = .niceWhite
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    /*
     let subscribeButton: UIButton = {
         let button = UIButton()
         
         button.setTitle("Subscribe", for: .normal)
         button.setTitleColor(UIColor.niceWhite, for: .normal)
         button.backgroundColor = .systemRed
         button.layer.cornerRadius = 10
         button.translatesAutoresizingMaskIntoConstraints = false
         
         button.addTarget(self, action: #selector(showSubscriptionViewController), for: .touchUpInside)
         
         return button
     }()
     */

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .niceWhite
        
        view.addSubview(mainImage)
        view.addSubview(closeButton)
        view.addSubview(descriptionView)
        view.addSubview(subscriptionWithDescriptionButtonView)
        view.addSubview(privacyPolicyButton)
        view.addSubview(usagePolicyButton)
        
        mainImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        mainImage.widthAnchor.constraint(equalToConstant: 350).isActive = true
        mainImage.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        closeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        descriptionView.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 20).isActive = true
        descriptionView.bottomAnchor.constraint(equalTo: subscriptionWithDescriptionButtonView.topAnchor, constant: -80).isActive = true
        descriptionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        descriptionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        subscriptionWithDescriptionButtonView.bottomAnchor.constraint(equalTo: privacyPolicyButton.topAnchor, constant: -50).isActive = true
        subscriptionWithDescriptionButtonView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        subscriptionWithDescriptionButtonView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        subscriptionWithDescriptionButtonView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        privacyPolicyButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        privacyPolicyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -50).isActive = true
        
        usagePolicyButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        usagePolicyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 50).isActive = true
    }
    

}
