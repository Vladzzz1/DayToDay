//
//  HolidaysView.swift
//  DayToDay
//
//  Created by Владислав Дзярик on 13.11.2020.
//

import UIKit

final class HolidaysViev: UIView {
     
    private let controller: HolidaysController
    
    private var tableView: UITableView = {
       let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.tableFooterView = UIView()
        return tableView
    }()
    
    private var holidays: [[HolidayCellItem]] = []
    
    init(controller: HolidaysController) {
        self.controller = controller
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        setTableViewConstraints()
    }
    
    func configureView() {
        backgroundColor = .white
        configureTableView()
        setNeedsUpdateConstraints()
    }
    
    func setItems(_ items: [HolidayCellItem]) {
        for item in items {
            let newSectionArray = [item]
            holidays.append(newSectionArray)
        }
        tableView.reloadData()
    }
    
    private func configureTableView() {
        addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(HolidaysCell.self, forCellReuseIdentifier: HolidaysCell.identifier)
    }
 
}
    //MARK: - Constraints


    extension HolidaysViev {
        private func setTableViewConstraints() {
            NSLayoutConstraint.activate([
                tableView.topAnchor.constraint(equalTo: topAnchor),
                tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
                tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
                tableView.trailingAnchor.constraint(equalTo: trailingAnchor)
            ])
        }
    }
    
    //MARK: - TableView
    
    extension HolidaysViev: UITableViewDelegate, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return holidays[section].count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let currentItem = holidays[indexPath.section][indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: HolidaysCell.identifier) as! HolidaysCell
            cell.setHolidayTitle(currentItem.displayTitle)
            return cell
        }
        
    }
    
