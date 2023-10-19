//
//  MainViewController.swift
//  cryptoSearch
//
//  Created by Adriel Teles on 16/10/23.
//
import UIKit

class MainViewController: UIViewController {
    
    
    var screen: MainView?
    var cryptoManager = CryptoManager()
    
    override func loadView() {
        screen = MainView()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screen?.coinPickerView.dataSource = self
        screen?.coinPickerView.delegate = self
        cryptoManager.delegate = self
        
        
        cryptoManager.getCoinPrice(to: cryptoManager.targetArray[0] ,for: cryptoManager.currencyArray[0])
        cryptoManager.getCoinPrice(to: cryptoManager.targetArray[1] ,for: cryptoManager.currencyArray[0])
        cryptoManager.getCoinPrice(to: cryptoManager.targetArray[2] ,for: cryptoManager.currencyArray[0])
        cryptoManager.getCoinPrice(to: cryptoManager.targetArray[3] ,for: cryptoManager.currencyArray[0])

    }
}
//MARK: - BtcManagerDelegate

extension MainViewController: CryptoManagerDelegate {
    
    func didUpdatePrice(price: String, currency: String, coinTarget:String) {
        
        DispatchQueue.main.async {
            
            if coinTarget == "BTC" {
                self.screen?.coinBtcLabel.text = price
                self.screen?.coinBtcDescLabel.text = currency
            }
            if coinTarget == "ETH" {
                self.screen?.coinEthLabel.text = price
                self.screen?.coinEthDescLabel.text = currency
            }
            if coinTarget == "LTC" {
                self.screen?.coinLtcLabel.text = price
                self.screen?.coinLtcDescLabel.text = currency
            }
            if coinTarget == "USD" {
                self.screen?.coinUsdLabel.text = price
                self.screen?.coinUsdDescLabel.text = currency
            }
            
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}

//MARK: - UIPickerView DataSource & Delegate

extension MainViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
          return 1
      }
      
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
          return cryptoManager.currencyArray.count
      }
      
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          return cryptoManager.currencyArray[row]
      }
      
      func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          let selectedCurrency = cryptoManager.currencyArray[row]
          cryptoManager.getCoinPrice(to: cryptoManager.targetArray[0],for: selectedCurrency)
          cryptoManager.getCoinPrice(to: cryptoManager.targetArray[1],for: selectedCurrency)
          cryptoManager.getCoinPrice(to: cryptoManager.targetArray[2],for: selectedCurrency)
          cryptoManager.getCoinPrice(to: cryptoManager.targetArray[3],for: selectedCurrency)
      }
}
