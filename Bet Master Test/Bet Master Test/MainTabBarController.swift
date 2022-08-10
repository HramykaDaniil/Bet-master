//
//  MainTabBarController.swift
//  Bet Master Test
//
//  Created by Daniil on 2.08.22.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateTabBar()
        setTabBarAppearance()

    }
    
    private func generateTabBar() {
        
        viewControllers = [
            
        generateNavigationController(
            navigationController: PredictionViewController(),
            title: "Prediction",
            image: UIImage(systemName: "circle.hexagonpath")
        ),
        
        generateViewController(
            viewController: SubscriptionViewController(),
            title: "Subscription",
            image: UIImage(systemName: "star")
        )]
        
        self.setViewControllers(viewControllers, animated: true)
        
    }
    
    private func generateViewController(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        
        return viewController
        
    }
    
    func generateNavigationController(navigationController: UIViewController, title: String, image: UIImage?) -> UINavigationController {
        
        let navigationController = UINavigationController(rootViewController: navigationController)
        
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = image
        
        return navigationController
    }
 
    private func setTabBarAppearance() {
        
        tabBar.backgroundColor = UIColor.niceWhite
        tabBar.tintColor = UIColor.lightGreen
        tabBar.unselectedItemTintColor = UIColor.darkGray
        
    }
    
}
