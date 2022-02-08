//
//  ViewController.swift
//  homework10.3
//
//  Created by Alehandro on 30.01.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "START"
        
        view.backgroundColor = .systemGray6
        // Do any additional setup after loading the view.
    }
    @IBAction func onStartButton(_ sender: Any) {
        transitToGameScreen()
    }
    
    private func transitToGameScreen() {
        let storyboard = UIStoryboard.init(name: "GameScreen", bundle: Bundle.main)
        let vc = storyboard.instantiateInitialViewController() as! GameScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    

}

