//
//  MainViewController.swift
//  cryptoSearch
//
//  Created by Adriel Teles on 16/10/23.
//
import UIKit

class MainViewController: UIViewController {
    
    
    var screen: MainView?
    
    override func loadView() {
        screen = MainView()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
