//
//  EventsController.swift
//  DayToDay
//
//  Created by Владислав Дзярик on 15.11.2020.
//

import UIKit

final class EventsController: UIViewController {
    
    private var eventsView: EventsView!
    
    override func loadView() {
        super.loadView()
        eventsView = EventsView(controller: self)
        view = eventsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        eventsView.configureVeiw()
    }
    
}
