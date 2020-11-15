//
//  HolidaysCell.swift
//  DayToDay
//
//  Created by Владислав Дзярик on 13.11.2020.
//

import UIKit

final class HolidaysCell: UITableViewCell {
    
    static let identifier = "HolidaysCell"
    
    private let mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .secondarySystemBackground
        view.layer.cornerRadius = 16
        return view
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let myImage: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "orange")
        image.contentMode = .scaleToFill
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        setMainViewConstraints()
        setTitleLabelConstraints()
        setMyImageConstraints()
        super.updateConstraints()
    }
    
    func setHolidayTitle(_ title: String) {
        titleLabel.text = title
    }
    
    private func configureCell() {
        contentView.addSubview(mainView)
        mainView.addSubview(titleLabel)
        mainView.addSubview(myImage)
        setNeedsUpdateConstraints()
    }
}

//MARK: -Constraints

extension HolidaysCell {
    private func setMainViewConstraints() {
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            mainView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            mainView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            mainView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40)
        ])
    }
    
    private func setTitleLabelConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 16),
            titleLabel.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -16),
            titleLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
        ])
    }
    
    private func setMyImageConstraints() {
        NSLayoutConstraint.activate([
            myImage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 8),
            myImage.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -8),
            myImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 12),
            myImage.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -12)
        ])
    }
    
}
