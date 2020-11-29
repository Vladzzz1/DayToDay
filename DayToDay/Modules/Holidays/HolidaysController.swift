//
//  HolidaysController.swift
//  DayToDay
//
//  Created by Владислав Дзярик on 13.11.2020.
//

import UIKit

final class HolidaysController: UIViewController {
    
    private var holidaysView: HolidaysViev!
    
    private let holidays: [Holiday] = [
        Holiday(title: "День уролога",
                date: Date(),
                description: "В этот день отмечается праздник, когда все нарижаются в костюм пиписьки и ходят в кабинеты врачей",
                image: #imageLiteral(resourceName: "apple")
        ),
        Holiday(title: "День вони",
                date: Date(),
                description: "В этот день люди пукают на улице",
                image: #imageLiteral(resourceName: "apple")
        ),
        Holiday(title: "День пердень",
                date: Date(),
                description: "В этот день отмечается праздник, когда все нарижаются в костюм пиписьки и ходят в кабинеты врачей",
                image: #imageLiteral(resourceName: "apple")
        ),
        Holiday(title: "День магии",
                date: Date(),
                description: "В этот день люди пукают на улице",
                image: #imageLiteral(resourceName: "apple")
        ),
        Holiday(title: "День магии вне Хогвартса",
                date: Date(),
                description: "В этот день отмечается праздник, когда все нарижаются в костюм пиписьки и ходят в кабинеты врачей",
                image: #imageLiteral(resourceName: "apple")
        ),
        Holiday(title: "День творога, который не успел прокиснуть в холодильнке",
                date: Date(),
                description: "В этот день люди пукают на улице",
                image: #imageLiteral(resourceName: "apple")
        ),
        Holiday(title: "День уролога",
                date: Date(),
                description: "В этот день отмечается праздник, когда все нарижаются в костюм пиписьки и ходят в кабинеты врачей",
                image: #imageLiteral(resourceName: "apple")
        ),
        Holiday(title: "День вони",
                date: Date(),
                description: "В этот день люди пукают на улице",
                image: #imageLiteral(resourceName: "apple")
        ),
        Holiday(title: "День пердень",
                date: Date(),
                description: "В этот день отмечается праздник, когда все нарижаются в костюм пиписьки и ходят в кабинеты врачей",
                image: #imageLiteral(resourceName: "apple")
        ),
        Holiday(title: "День магии",
                date: Date(),
                description: "В этот день люди пукают на улице",
                image: #imageLiteral(resourceName: "apple")
        ),
        Holiday(title: "День магии вне Хогвартса",
                date: Date(),
                description: "В этот день отмечается праздник, когда все нарижаются в костюм пиписьки и ходят в кабинеты врачей",
                image: #imageLiteral(resourceName: "apple")
        ),
        Holiday(title: "День творога, который не успел прокиснуть в холодильнке",
                date: Date(),
                description: "В этот день люди пукают на улице",
                image: #imageLiteral(resourceName: "apple")
        )
    ]
    
    override func loadView() {
        super.loadView()
        holidaysView = HolidaysViev(controller: self)
        view = holidaysView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        (navigationController as? DTDNavigationController)?.showProgressBar()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        (navigationController as? DTDNavigationController)?.hideProgressBar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        holidaysView.configureView()
        
        var holidayCellItems: [HolidayCellItem] = []
        for holiday in holidays {
            let item = holidayToItem(holiday)
            holidayCellItems.append(item)
        }
        holidaysView.setItems(holidayCellItems)
    }
    
    private func holidayToItem(_ holiday: Holiday) -> HolidayCellItem {
        let title = holiday.title
        let displayTitle = "\(title)"
        return HolidayCellItem(displayTitle: displayTitle)
    }
    
    func holidayTapped() {
        navigationController?.show(DiscriptionController(), sender: nil)
    }
        
}
