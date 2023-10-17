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
        label.font = .boldSystemFont(ofSize: 42)
        return label
    }()
    
    lazy var btcView: UIView = {
       let btcView = UIView()
        btcView.translatesAutoresizingMaskIntoConstraints = false
        btcView.backgroundColor = UIColor(resource: .appLabelColorAny)
        btcView.layer.cornerRadius = 50
        return btcView
    }()
    
    lazy var btcIcon: UIImageView = {
      let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(resource: .bitcoinIcon)
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    lazy var coinLabel: UILabel = {
       let coinLabel = UILabel()
        coinLabel.translatesAutoresizingMaskIntoConstraints = false
        coinLabel.textColor = UIColor(resource: .allLabel)
        coinLabel.textAlignment = .center
        coinLabel.font = .boldSystemFont(ofSize: 28)
        coinLabel.numberOfLines = 1
        coinLabel.adjustsFontSizeToFitWidth = true
        coinLabel.minimumScaleFactor = 0.5
        return coinLabel
    }()
    lazy var coinDescLabel: UILabel = {
       let descLabel = UILabel()
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        descLabel.textColor = UIColor(resource: .allLabel)
        descLabel.textAlignment = .center
        descLabel.font = .boldSystemFont(ofSize: 28)
        descLabel.numberOfLines = 1
        descLabel.adjustsFontSizeToFitWidth = true
        descLabel.minimumScaleFactor = 0.5
        return descLabel
    }()
    
    
    let view2: UIView = {
        let view = UIView()
//        view.backgroundColor = UIColor.green
        return view
    }()
    
    let view3: UIView = {
        let view = UIView()
        return view
    }()
    
    let coinPickerView: UIPickerView = {
       let pickerView = UIPickerView()
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        pickerView.tintColor = UIColor(resource: .appLabelColorAny)
        return pickerView
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
        addSubview(coinLabel)
        addSubview(coinDescLabel)
        addSubview(coinPickerView)
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
            btcView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30),
            btcView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            btcView.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -30),
            
            //btcIcon
            btcIcon.topAnchor.constraint(equalTo: btcView.topAnchor),
            btcIcon.leadingAnchor.constraint(equalTo: btcView.leadingAnchor, constant: 5),
            btcIcon.trailingAnchor.constraint(equalTo: btcIcon.leadingAnchor,constant: 100),
            btcIcon.bottomAnchor.constraint(equalTo: btcView.bottomAnchor),
            
            //coinLabel
            
            coinLabel.topAnchor.constraint(equalTo: btcView.topAnchor, constant: 10),
            coinLabel.leadingAnchor.constraint(equalTo: btcIcon.trailingAnchor),
            coinLabel.trailingAnchor.constraint(equalTo: coinDescLabel.leadingAnchor, constant: -5),
            coinLabel.bottomAnchor.constraint(equalTo: btcView.bottomAnchor, constant: -10),
            
            //descLabel
            coinDescLabel.topAnchor.constraint(equalTo: btcView.topAnchor, constant: 10),
            coinDescLabel.leadingAnchor.constraint(equalTo: btcView.trailingAnchor, constant: -70),
            coinDescLabel.trailingAnchor.constraint(equalTo: btcView.trailingAnchor, constant: -10),
            coinDescLabel.bottomAnchor.constraint(equalTo: btcView.bottomAnchor, constant: -10),
            
            
            //coin PickerView
            coinPickerView.topAnchor.constraint(equalTo: view3.topAnchor),
            coinPickerView.leadingAnchor.constraint(equalTo: view3.leadingAnchor),
            coinPickerView.trailingAnchor.constraint(equalTo: view3.trailingAnchor),
            coinPickerView.bottomAnchor.constraint(equalTo: view3.bottomAnchor),
            
        ])
        
    }
}
