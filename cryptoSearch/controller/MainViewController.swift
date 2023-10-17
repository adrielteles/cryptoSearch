//
//  MainViewController.swift
//  cryptoSearch
//
//  Created by Adriel Teles on 16/10/23.
//
import UIKit

class MainViewController: UIViewController {
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    var screen: MainView?
    
    override func loadView() {
        screen = MainView()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screen?.coinPickerView.dataSource = self
        screen?.coinPickerView.delegate = self
    }
}
//MARK: - UIPickerView DataSource & Delegate

extension MainViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
          return 1
      }
      
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
          return currencyArray.count
      }
      
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          return currencyArray[row]
      }
      
      func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          let selectedCurrency = currencyArray[row]
//          coinManager.getCoinPrice(for: selectedCurrency)
          screen?.coinDescLabel.text = selectedCurrency
      }
}
