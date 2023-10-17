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
        
        cryptoManager.getCoinPrice(for: cryptoManager.currencyArray[0])

    }
}
//MARK: - CoinManagerDelegate

extension MainViewController: CryptoManagerDelegate {
    
    func didUpdatePrice(price: String, currency: String) {
        
        DispatchQueue.main.async {
            self.screen?.coinLabel.text = price
            self.screen?.coinDescLabel.text = currency
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
          cryptoManager.getCoinPrice(for: selectedCurrency)
      }
}
