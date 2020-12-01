//
//  DiscriptionView.swift
//  DayToDay
//
//  Created by Владислав Дзярик on 15.11.2020.
//

import UIKit

final class DiscriptionView: UIView {
    
    private let controller: DiscriptionController
    
    init(controller: DiscriptionController) {
        self.controller = controller
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureView() {
        backgroundColor = .systemBackground
        setNeedsUpdateConstraints()
    }
    
    
    
}
