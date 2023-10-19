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
    lazy var appLogo: UIImageView = {
       let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = UIImage(resource: .logoApp)
        logo.contentMode = .scaleAspectFit
        return logo
    }()
    
    
    lazy var appLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Crypto"
        label.textColor = UIColor(resource: .appLabelColorAny)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 36)
        return label
    }()
    lazy var appLabel2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Search"
        label.textColor = UIColor(resource: .appLabelColorAny)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 32)
        return label
    }()
    
    let btcView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.backgroundColor = UIColor(resource: .appBack)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = 4.0
        return view
    }()
    
    lazy var btcIcon: UIImageView = {
        let btcIcon = UIImageView()
        btcIcon.translatesAutoresizingMaskIntoConstraints = false
        btcIcon.image = UIImage(resource: .btcIcon)
        btcIcon.contentMode = .scaleAspectFit
        btcIcon.backgroundColor = UIColor(resource: .appLabelColorAny)
        btcIcon.layer.cornerRadius = 60
        btcIcon.layer.shadowColor = UIColor.black.cgColor
        btcIcon.layer.shadowOpacity = 0.1
        btcIcon.layer.shadowOffset = CGSize(width: 2, height: 2)
        btcIcon.layer.shadowRadius = 4.0
        return btcIcon
    }()
    
    lazy var btcLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "BTC"
        label.textColor = UIColor(resource: .appLabelColorAny)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 20)
        label.numberOfLines = 1
        return label
    }()
    lazy var btcLabelDesc: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bitcoin"
        label.textColor = UIColor(resource: .appLabelColorAny)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 16)
        label.alpha = 0.6
        label.numberOfLines = 1
        return label
    }()
    
    lazy var coinBtcLabel: UILabel = {
        let coinLabel = UILabel()
        coinLabel.translatesAutoresizingMaskIntoConstraints = false
        coinLabel.textColor = UIColor(resource: .appLabelColorAny)
        coinLabel.textAlignment = .right
        coinLabel.font = .boldSystemFont(ofSize: 28)
        coinLabel.numberOfLines = 1
        coinLabel.adjustsFontSizeToFitWidth = true
        coinLabel.minimumScaleFactor = 0.5
        return coinLabel
    }()
    lazy var coinBtcDescLabel: UILabel = {
        let descLabel = UILabel()
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        descLabel.textColor = UIColor(resource: .appLabelColorAny)
        descLabel.textAlignment = .center
        descLabel.font = .boldSystemFont(ofSize: 28)
        descLabel.numberOfLines = 1
        descLabel.adjustsFontSizeToFitWidth = true
        descLabel.minimumScaleFactor = 0.5
        return descLabel
    }()
    
    
    let ethView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.backgroundColor = UIColor(resource: .appBack)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = 4.0
        return view
    }()
    
    
    lazy var ethIcon: UIImageView = {
        let ethIcon = UIImageView()
        ethIcon.translatesAutoresizingMaskIntoConstraints = false
        ethIcon.image = UIImage(resource: .ethIcon)
        ethIcon.contentMode = .scaleAspectFit
        ethIcon.backgroundColor = UIColor(resource: .appLabelColorAny)
        ethIcon.layer.cornerRadius = 60
        ethIcon.layer.shadowColor = UIColor.black.cgColor
        ethIcon.layer.shadowOpacity = 0.1
        ethIcon.layer.shadowOffset = CGSize(width: 2, height: 2)
        ethIcon.layer.shadowRadius = 4.0
        return ethIcon
    }()
    lazy var ethLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ETH"
        label.textColor = UIColor(resource: .appLabelColorAny)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 20)
        label.numberOfLines = 1
        return label
    }()
    lazy var ethLabelDesc: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ethereum"
        label.textColor = UIColor(resource: .appLabelColorAny)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 16)
        label.alpha = 0.6
        label.numberOfLines = 1
        return label
    }()
    lazy var coinEthLabel: UILabel = {
        let coinLabel = UILabel()
        coinLabel.translatesAutoresizingMaskIntoConstraints = false
        coinLabel.textColor = UIColor(resource: .appLabelColorAny)
        coinLabel.textAlignment = .right
        coinLabel.font = .boldSystemFont(ofSize: 28)
        coinLabel.numberOfLines = 1
        coinLabel.adjustsFontSizeToFitWidth = true
        coinLabel.minimumScaleFactor = 0.5
        return coinLabel
    }()
    lazy var coinEthDescLabel: UILabel = {
        let descLabel = UILabel()
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        descLabel.textColor = UIColor(resource: .appLabelColorAny)
        descLabel.textAlignment = .center
        descLabel.font = .boldSystemFont(ofSize: 28)
        descLabel.numberOfLines = 1
        descLabel.adjustsFontSizeToFitWidth = true
        descLabel.minimumScaleFactor = 0.5
        return descLabel
    }()
    
    
    let ltcView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.backgroundColor = UIColor(resource: .appBack)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = 4.0
        
        return view
    }()
    
    lazy var ltcIcon: UIImageView = {
        let ltcIcon = UIImageView()
        ltcIcon.translatesAutoresizingMaskIntoConstraints = false
        ltcIcon.image = UIImage(resource: .ltcIcon)
        ltcIcon.contentMode = .scaleAspectFit
        ltcIcon.backgroundColor = UIColor(resource: .appLabelColorAny)
        ltcIcon.layer.cornerRadius = 60
        ltcIcon.layer.shadowColor = UIColor.black.cgColor
        ltcIcon.layer.shadowOpacity = 0.1
        ltcIcon.layer.shadowOffset = CGSize(width: 2, height: 2)
        ltcIcon.layer.shadowRadius = 4.0
        return ltcIcon
    }()
    lazy var ltcLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "LTC"
        label.textColor = UIColor(resource: .appLabelColorAny)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 20)
        label.numberOfLines = 1
        return label
    }()
    lazy var ltcLabelDesc: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Litecoin"
        label.textColor = UIColor(resource: .appLabelColorAny)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 16)
        label.alpha = 0.6
        label.numberOfLines = 1
        return label
    }()
    lazy var coinLtcLabel: UILabel = {
        let coinLabel = UILabel()
        coinLabel.translatesAutoresizingMaskIntoConstraints = false
        coinLabel.textColor = UIColor(resource: .appLabelColorAny)
        coinLabel.textAlignment = .right
        coinLabel.font = .boldSystemFont(ofSize: 28)
        coinLabel.numberOfLines = 1
        coinLabel.adjustsFontSizeToFitWidth = true
        coinLabel.minimumScaleFactor = 0.5
        return coinLabel
    }()
    lazy var coinLtcDescLabel: UILabel = {
        let descLabel = UILabel()
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        descLabel.textColor = UIColor(resource: .appLabelColorAny)
        descLabel.textAlignment = .center
        descLabel.font = .boldSystemFont(ofSize: 28)
        descLabel.numberOfLines = 1
        descLabel.adjustsFontSizeToFitWidth = true
        descLabel.minimumScaleFactor = 0.5
        return descLabel
    }()
    
    let usdView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.backgroundColor = UIColor(resource: .appBack)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = 4.0
        return view
    }()
    
    lazy var usdIcon: UIImageView = {
        let usdIcon = UIImageView()
        usdIcon.translatesAutoresizingMaskIntoConstraints = false
        usdIcon.image = UIImage(resource: .usdIcon)
        usdIcon.contentMode = .scaleAspectFit
        usdIcon.backgroundColor = UIColor(resource: .appLabelColorAny)
        usdIcon.layer.cornerRadius = 60
        usdIcon.layer.shadowColor = UIColor.black.cgColor
        usdIcon.layer.shadowOpacity = 0.1
        usdIcon.layer.shadowOffset = CGSize(width: 2, height: 2)
        usdIcon.layer.shadowRadius = 4.0
        return usdIcon
    }()
    lazy var usdLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "USD"
        label.textColor = UIColor(resource: .appLabelColorAny)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 20)
        label.numberOfLines = 1
        return label
    }()
    lazy var usdLabelDesc: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Dollar"
        label.textColor = UIColor(resource: .appLabelColorAny)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 16)
        label.alpha = 0.6
        label.numberOfLines = 1
        return label
    }()
    lazy var coinUsdLabel: UILabel = {
        let coinLabel = UILabel()
        coinLabel.translatesAutoresizingMaskIntoConstraints = false
        coinLabel.textColor = UIColor(resource: .appLabelColorAny)
        coinLabel.textAlignment = .right
        coinLabel.font = .boldSystemFont(ofSize: 28)
        coinLabel.numberOfLines = 1
        coinLabel.adjustsFontSizeToFitWidth = true
        coinLabel.minimumScaleFactor = 0.5
        return coinLabel
    }()
    lazy var coinUsdDescLabel: UILabel = {
        let descLabel = UILabel()
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        descLabel.textColor = UIColor(resource: .appLabelColorAny)
        descLabel.textAlignment = .center
        descLabel.font = .boldSystemFont(ofSize: 28)
        descLabel.numberOfLines = 1
        descLabel.adjustsFontSizeToFitWidth = true
        descLabel.minimumScaleFactor = 0.5
        return descLabel
    }()
    
    
    let picketBgView: UIView = {
        let view = UIView()
        return view
    }()
    
    let coinPickerView: UIPickerView = {
        let pickerView = UIPickerView()
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        pickerView.tintColor = UIColor(resource: .appLabelColorAny)
        return pickerView
    }()
    
    lazy var quoteStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [btcView, ethView, ltcView, usdView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    lazy var coinStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [quoteStackView, picketBgView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fill
        return stackView
    }()
    
    
    // Stack view
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [view1, coinStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.distribution = .fill
        return stackView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(backgroundView)
        addSubview(stackView)
        view1.addSubview(appLogo)
        view1.addSubview(appLabel)
        view1.addSubview(appLabel2)
        picketBgView.addSubview(coinPickerView)
        
        btcView.addSubview(btcIcon)
        btcView.addSubview(btcLabel)
        btcView.addSubview(btcLabelDesc)
        btcView.addSubview(coinBtcLabel)
        btcView.addSubview(coinBtcDescLabel)
        
        ethView.addSubview(ethIcon)
        ethView.addSubview(ethLabel)
        ethView.addSubview(ethLabelDesc)
        ethView.addSubview(coinEthLabel)
        ethView.addSubview(coinEthDescLabel)
        
        ltcView.addSubview(ltcIcon)
        ltcView.addSubview(ltcLabel)
        ltcView.addSubview(ltcLabelDesc)
        ltcView.addSubview(coinLtcLabel)
        ltcView.addSubview(coinLtcDescLabel)
        
        usdView.addSubview(usdIcon)
        usdView.addSubview(usdLabel)
        usdView.addSubview(usdLabelDesc)
        usdView.addSubview(coinUsdLabel)
        usdView.addSubview(coinUsdDescLabel)
        
        configContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configContraints() {
        
        NSLayoutConstraint.activate([
            //background
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            //stack view
            stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            
            //view1
            view1.heightAnchor.constraint(equalToConstant: 200),
            
            appLogo.topAnchor.constraint(equalTo: view1.topAnchor, constant: 40),
            appLogo.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 75),
//            appLogo.trailingAnchor.constraint(equalTo: view1.trailingAnchor),
            appLogo.heightAnchor.constraint(equalToConstant: 80),
            appLogo.widthAnchor.constraint(equalToConstant: 80),
        
            
            appLabel.topAnchor.constraint(equalTo: appLogo.topAnchor),
            appLabel.leadingAnchor.constraint(equalTo: appLogo.trailingAnchor, constant: 5),
            
            appLabel2.leadingAnchor.constraint(equalTo: appLogo.trailingAnchor, constant: 5),
            appLabel2.topAnchor.constraint(equalTo: appLabel.bottomAnchor, constant: 2),
            
            picketBgView.heightAnchor.constraint(equalToConstant: 200),
            //coin PickerView
            coinPickerView.topAnchor.constraint(equalTo: picketBgView.topAnchor),
            coinPickerView.leadingAnchor.constraint(equalTo: picketBgView.leadingAnchor),
            coinPickerView.trailingAnchor.constraint(equalTo: picketBgView.trailingAnchor),
            coinPickerView.bottomAnchor.constraint(equalTo: picketBgView.bottomAnchor),
            
            
            btcIcon.topAnchor.constraint(equalTo: btcView.topAnchor),
            btcIcon.leadingAnchor.constraint(equalTo: btcView.leadingAnchor, constant: 7),
            btcIcon.bottomAnchor.constraint(equalTo: btcView.bottomAnchor),
            btcIcon.heightAnchor.constraint(equalToConstant: 45),
            btcIcon.widthAnchor.constraint(equalToConstant: 45),
            
            btcLabel.topAnchor.constraint(equalTo: btcView.topAnchor,constant: 15),
            btcLabel.leadingAnchor.constraint(equalTo: btcIcon.trailingAnchor,constant: 10),
            btcLabel.bottomAnchor.constraint(equalTo: btcLabelDesc.topAnchor),
            
            btcLabelDesc.topAnchor.constraint(equalTo: btcLabel.bottomAnchor),
            btcLabelDesc.bottomAnchor.constraint(equalTo: btcView.bottomAnchor,constant: -15),
            btcLabelDesc.leadingAnchor.constraint(equalTo: btcIcon.trailingAnchor,constant: 10),
            
            //coinLabel
            
            coinBtcLabel.topAnchor.constraint(equalTo: btcView.topAnchor, constant: 10),
            coinBtcLabel.leadingAnchor.constraint(equalTo: btcLabelDesc.trailingAnchor),
            coinBtcLabel.trailingAnchor.constraint(equalTo: coinBtcDescLabel.leadingAnchor, constant: -5),
            coinBtcLabel.bottomAnchor.constraint(equalTo: btcView.bottomAnchor, constant: -10),
            
            //descLabel
            coinBtcDescLabel.topAnchor.constraint(equalTo: btcView.topAnchor, constant: 10),
            coinBtcDescLabel.leadingAnchor.constraint(equalTo: btcView.trailingAnchor, constant: -70),
            coinBtcDescLabel.trailingAnchor.constraint(equalTo: btcView.trailingAnchor, constant: -10),
            coinBtcDescLabel.bottomAnchor.constraint(equalTo: btcView.bottomAnchor, constant: -10),
            
            ethIcon.topAnchor.constraint(equalTo: ethView.topAnchor),
            ethIcon.leadingAnchor.constraint(equalTo: ethView.leadingAnchor, constant: 7),
            ethIcon.bottomAnchor.constraint(equalTo: ethView.bottomAnchor),
            ethIcon.heightAnchor.constraint(equalToConstant: 45),
            ethIcon.widthAnchor.constraint(equalToConstant: 45),
            
            ethLabel.topAnchor.constraint(equalTo: ethView.topAnchor,constant: 15),
            ethLabel.leadingAnchor.constraint(equalTo: ethIcon.trailingAnchor,constant: 10),
            ethLabel.bottomAnchor.constraint(equalTo: ethLabelDesc.topAnchor),
            
            ethLabelDesc.topAnchor.constraint(equalTo: ethLabel.bottomAnchor),
            ethLabelDesc.bottomAnchor.constraint(equalTo: ethView.bottomAnchor,constant: -15),
            ethLabelDesc.leadingAnchor.constraint(equalTo: ethIcon.trailingAnchor,constant: 10),
            
            //coinLabel
            
            coinEthLabel.topAnchor.constraint(equalTo: ethView.topAnchor, constant: 10),
            coinEthLabel.leadingAnchor.constraint(equalTo: ethLabelDesc.trailingAnchor),
            coinEthLabel.trailingAnchor.constraint(equalTo: coinEthDescLabel.leadingAnchor, constant: -5),
            coinEthLabel.bottomAnchor.constraint(equalTo: ethView.bottomAnchor, constant: -10),
            
            //descLabel
            coinEthDescLabel.topAnchor.constraint(equalTo: ethView.topAnchor, constant: 10),
            coinEthDescLabel.leadingAnchor.constraint(equalTo: ethView.trailingAnchor, constant: -70),
            coinEthDescLabel.trailingAnchor.constraint(equalTo: ethView.trailingAnchor, constant: -10),
            coinEthDescLabel.bottomAnchor.constraint(equalTo: ethView.bottomAnchor, constant: -10),
            
            
            ltcIcon.topAnchor.constraint(equalTo: ltcView.topAnchor),
            ltcIcon.leadingAnchor.constraint(equalTo: ltcView.leadingAnchor, constant: 7),
            ltcIcon.bottomAnchor.constraint(equalTo: ltcView.bottomAnchor),
            ltcIcon.heightAnchor.constraint(equalToConstant: 45),
            ltcIcon.widthAnchor.constraint(equalToConstant: 45),
            
            ltcLabel.topAnchor.constraint(equalTo: ltcView.topAnchor,constant: 15),
            ltcLabel.leadingAnchor.constraint(equalTo: ltcIcon.trailingAnchor,constant: 10),
            ltcLabel.bottomAnchor.constraint(equalTo: ltcLabelDesc.topAnchor),
            
            ltcLabelDesc.topAnchor.constraint(equalTo: ltcLabel.bottomAnchor),
            ltcLabelDesc.bottomAnchor.constraint(equalTo: ltcView.bottomAnchor,constant: -15),
            ltcLabelDesc.leadingAnchor.constraint(equalTo: ltcIcon.trailingAnchor,constant: 10),
            
            //coinLabel
            
            coinLtcLabel.topAnchor.constraint(equalTo: ltcView.topAnchor, constant: 10),
            coinLtcLabel.leadingAnchor.constraint(equalTo: ltcLabelDesc.trailingAnchor),
            coinLtcLabel.trailingAnchor.constraint(equalTo: coinLtcDescLabel.leadingAnchor, constant: -5),
            coinLtcLabel.bottomAnchor.constraint(equalTo: ltcView.bottomAnchor, constant: -10),
            
            //descLabel
            coinLtcDescLabel.topAnchor.constraint(equalTo: ltcView.topAnchor, constant: 10),
            coinLtcDescLabel.leadingAnchor.constraint(equalTo: ltcView.trailingAnchor, constant: -70),
            coinLtcDescLabel.trailingAnchor.constraint(equalTo: ltcView.trailingAnchor, constant: -10),
            coinLtcDescLabel.bottomAnchor.constraint(equalTo: ltcView.bottomAnchor, constant: -10),
            
            
            usdIcon.topAnchor.constraint(equalTo: usdView.topAnchor),
            usdIcon.leadingAnchor.constraint(equalTo: usdView.leadingAnchor, constant: 7),
            usdIcon.bottomAnchor.constraint(equalTo: usdView.bottomAnchor),
            usdIcon.heightAnchor.constraint(equalToConstant: 45),
            usdIcon.widthAnchor.constraint(equalToConstant: 45),
            
            usdLabel.topAnchor.constraint(equalTo: usdView.topAnchor,constant: 15),
            usdLabel.leadingAnchor.constraint(equalTo: usdIcon.trailingAnchor,constant: 10),
            usdLabel.bottomAnchor.constraint(equalTo: usdLabelDesc.topAnchor),
            
            usdLabelDesc.topAnchor.constraint(equalTo: usdLabel.bottomAnchor),
            usdLabelDesc.bottomAnchor.constraint(equalTo: usdView.bottomAnchor,constant: -15),
            usdLabelDesc.leadingAnchor.constraint(equalTo: usdIcon.trailingAnchor,constant: 10),
            
            //coinLabel
            
            coinUsdLabel.topAnchor.constraint(equalTo: usdView.topAnchor, constant: 10),
            coinUsdLabel.leadingAnchor.constraint(equalTo: usdLabelDesc.trailingAnchor),
            coinUsdLabel.trailingAnchor.constraint(equalTo: coinUsdDescLabel.leadingAnchor, constant: -5),
            coinUsdLabel.bottomAnchor.constraint(equalTo: usdView.bottomAnchor, constant: -10),
            
            //descLabel
            coinUsdDescLabel.topAnchor.constraint(equalTo: usdView.topAnchor, constant: 10),
            coinUsdDescLabel.leadingAnchor.constraint(equalTo: usdView.trailingAnchor, constant: -70),
            coinUsdDescLabel.trailingAnchor.constraint(equalTo: usdView.trailingAnchor, constant: -10),
            coinUsdDescLabel.bottomAnchor.constraint(equalTo: usdView.bottomAnchor, constant: -10),
        ])
        
    }
}
