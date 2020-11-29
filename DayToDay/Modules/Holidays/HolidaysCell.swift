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
        let cornerRadius: CGFloat = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UITraitCollection.current.userInterfaceStyle == .dark ? .secondarySystemBackground : .systemBackground
        view.layer.cornerRadius = cornerRadius
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.3
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        return view
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        return label
    }()
    
    private let myImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = #imageLiteral(resourceName: "orange")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
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
        
        selectionStyle = .none
    }
}

//MARK: -Constraints

extension HolidaysCell {
    private func setMainViewConstraints() {
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            mainView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            mainView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            mainView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            mainView.heightAnchor.constraint(equalToConstant: 90)
        ])
    }
    
    private func setTitleLabelConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 16),
            titleLabel.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -16),
            titleLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20)
        ])
    }
    
    private func setMyImageConstraints() {
        NSLayoutConstraint.activate([
            myImage.heightAnchor.constraint(equalToConstant: 40),
            myImage.widthAnchor.constraint(equalToConstant: 40),
            myImage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 16),
            myImage.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -16),
            myImage.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 8),
            myImage.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16)
        ])
    }
    
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        mainView.backgroundColor = UITraitCollection.current.userInterfaceStyle == .dark ? .secondarySystemBackground : .systemBackground
    }
    
}
