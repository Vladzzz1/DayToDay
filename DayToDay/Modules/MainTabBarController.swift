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
        setTabBar()
    }
    
    
    private func getViewControllers() -> [UIViewController] {
        let holidaysVC = HolidaysController()
        let eventsVC = EventsController()
        holidaysVC.title = "Праздники"
        eventsVC.title = "События"
        return [holidaysVC, eventsVC].map({UINavigationController(rootViewController: $0)})
    }
    
    private func setTabBar() {
        let tapHoliday = tabBar.items![0]
        let tapEvents = tabBar.items![1]
        
        //tapHoliday.image = UIImage(named: "holidays")
        //tapEvents.image = UIImage(named: "events")
        
    }
}
