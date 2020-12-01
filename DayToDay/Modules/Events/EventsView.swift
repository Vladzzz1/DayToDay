//
//  EventsView.swift
//  DayToDay
//
//  Created by Владислав Дзярик on 15.11.2020.
//

import UIKit

final class EventsView: UIView {
    
    private let controller: EventsController
    
    init(controller: EventsController) {
        self.controller = controller
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureVeiw() {
        backgroundColor = .systemBackground
        setNeedsUpdateConstraints()
    }
    
  
}
