//
//  DiscriptionController.swift
//  DayToDay
//
//  Created by Владислав Дзярик on 15.11.2020.
//

import UIKit

final class DiscriptionController: UIViewController {
    
    private var discriptionsView: DiscriptionView!
    
    override func loadView() {
        super.loadView()
        discriptionsView = DiscriptionView(controller: self)
        view = discriptionsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        discriptionsView.configureView()
    }
    
}
    
