//
//  MainTabBarController.swift
//  DayToDay
//
//  Created by Ацамаз Бицоев on 15.11.2020.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = getViewControllers()
    }
    
    
    private func getViewControllers() -> [UIViewController] {
        let holidaysVC = HolidaysController()
        let gangsterVC = HolidaysController()
        holidaysVC.title = "Праздники"
        gangsterVC.title = "События"
        
        return [holidaysVC, gangsterVC].map({UINavigationController(rootViewController: $0)})
    }
}
