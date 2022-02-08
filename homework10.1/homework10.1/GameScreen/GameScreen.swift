//
//  GameScreen.swift
//  homework10.1
//
//  Created by Alehandro on 27.01.22.
//

import UIKit

class GameScreen: UIViewController {
    
    private var circle: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        circle = UIView()
        
        view.backgroundColor = .white
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        view.addGestureRecognizer(gestureRecognizer)
        
        let gestureRecognizerCircle = UITapGestureRecognizer(target: self, action: #selector(onCircle))
        circle.addGestureRecognizer(gestureRecognizerCircle)
        
        view.addSubview(circle)

        // Do any additional setup after loading the view.
    }
    
    @objc func onTap(gesture: UITapGestureRecognizer) {
        var location = gesture.location(in: view)
        var locationX = location.x
        var locationY = location.y
        circle.frame = CGRect(x: locationX - 40, y: locationY - 40, width: 80, height: 80)
        circle.backgroundColor = .systemPink
        circle.layer.cornerRadius = 40
    }
    
    @objc func onCircle(gesture: UITapGestureRecognizer) {
        var location = gesture.location(in: circle)
        circle.backgroundColor = .none
        circle.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
