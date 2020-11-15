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
                date: "13/10/2020",
                description: "В этот день отмечается праздник, когда все нарижаются в костюм пиписьки и ходят в кабинеты врачей",
                image: #imageLiteral(resourceName: "apple")
        ),
        Holiday(title: "День вони",
                date: "13/10/2020",
                description: "В этот день люди пукают на улице",
                image: #imageLiteral(resourceName: "apple")
        )
    ]
    
    override func loadView() {
        super.loadView()
        holidaysView = HolidaysViev(controller: self)
        view = holidaysView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Праздники"
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
        
}
