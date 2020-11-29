//
//  DTDNavigationController.swift
//  DayToDay
//
//  Created by Владислав Дзярик on 29.11.2020.
//

import UIKit

final class DTDNavigationController: UINavigationController {
    
    private let progressBar: UIProgressView = {
        let progressView = UIProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.setProgress(0.5, animated: false)
        progressView.trackTintColor = .systemBackground
        return progressView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.addSubview(progressBar)
    }
    
    override func updateViewConstraints() {
        setProgressViewConstraints()
        super.updateViewConstraints()
    }
    
    
    func setProgress(_ progress: Float) {
        progressBar.setProgress(progress, animated: true)
    }
    
    func showProgressBar() {
        progressBar.isHidden = false
    }
    
    func hideProgressBar() {
        progressBar.isHidden = true
    }
    
}


extension DTDNavigationController {
    
    private func setProgressViewConstraints() {
        NSLayoutConstraint.activate([
            progressBar.topAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: -1),
            progressBar.leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor),
            progressBar.trailingAnchor.constraint(equalTo: navigationBar.trailingAnchor),
            progressBar.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}
