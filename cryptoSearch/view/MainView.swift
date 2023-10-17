//
//  MainView.swift
//  cryptoSearch
//
//  Created by Adriel Teles on 16/10/23.
//

import UIKit

class MainView: UIView {
    
    lazy var backgroundView: UIView = {
        let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = UIColor(resource: .background)
        
        return background
    }()
    
    let view1: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var appLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Crypto Search"
        label.textColor = UIColor(resource: .appLabelColorAny)
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 34)
        return label
    }()
    
    lazy var btcView: UIView = {
       let btcView = UIView()
        btcView.translatesAutoresizingMaskIntoConstraints = false
        btcView.backgroundColor = UIColor(resource: .appLabelColorAny)
        btcView.layer.cornerRadius = 55
        return btcView
    }()
    
    lazy var btcIcon: UIImageView = {
      let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(resource: .bitcoinIcon)
        icon.contentMode = .scaleAspectFill
        return icon
    }()
    
    
    let view2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        return view
    }()
    
    let view3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    // Stack view
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [view1, view2, view3])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical // ou .horizontal, dependendo da orientação desejada
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundView)
        addSubview(stackView)
        addSubview(appLabel)
        addSubview(btcView)
        addSubview(btcIcon)
        configContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configContraints() {
        
        NSLayoutConstraint.activate([
            //background contraints
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            //stack view constraints
            stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            
            //applabel
            appLabel.topAnchor.constraint(equalTo: view1.topAnchor, constant: 20),
            appLabel.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -20),
            appLabel.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 20),
            
            //btcView
            btcView.topAnchor.constraint(equalTo: appLabel.bottomAnchor, constant: 30),
            btcView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40),
            btcView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40),
            btcView.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -30),
            
            //btcIcon
            btcIcon.topAnchor.constraint(equalTo: btcView.topAnchor, constant: 5),
            btcIcon.leadingAnchor.constraint(equalTo: btcView.leadingAnchor),
            btcIcon.bottomAnchor.constraint(equalTo: btcView.bottomAnchor, constant: -5),
            
        ])
        
    }
}
