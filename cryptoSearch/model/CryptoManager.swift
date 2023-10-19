//
//  CryptoManager.swift
//  cryptoSearch
//
//  Created by Adriel Teles on 17/10/23.
//

import Foundation

protocol CryptoManagerDelegate {
    func didUpdatePrice(price: String, currency: String, coinTarget: String)
    func didFailWithError(error: Error)
}

struct CryptoManager {
    
    var delegate: CryptoManagerDelegate?
    
    let baseURL = API.BASE_URL
    let apiKey = API.API_KEY

    let targetArray = ["BTC","ETH","LTC","USD"]
    let currencyArray = ["BRL","AUD" ,"CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(to coinTarget:String, for currency: String) {
        
        let urlString = "\(baseURL)\(coinTarget)/\(currency)?apikey=\(apiKey)"
        print(urlString)
        
        if let url = URL(string: urlString) {
            
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                
                defer {
                    session.invalidateAndCancel()
                }
                
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    if let bitcoinPrice = self.parseJSON(safeData) {
                        let priceString = String(format: "%.2f", bitcoinPrice)
                        self.delegate?.didUpdatePrice(price: priceString, currency: currency, coinTarget: coinTarget)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ data: Data) -> Double? {
        
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(CryptoData.self, from: data)
            let lastPrice = decodedData.rate
            return lastPrice
            
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
}
