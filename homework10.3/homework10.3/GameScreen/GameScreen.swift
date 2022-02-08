//
//  GameScreen.swift
//  homework10.3
//
//  Created by Alehandro on 30.01.22.
//

import UIKit

class GameScreen: UIViewController {
    
    private var circle: UIView!
    private var width: CGFloat = 80
    private var height: CGFloat = 80

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        
        circle = UIView()
        
        circle.backgroundColor = .systemPink
        circle.frame = CGRect(x: view.bounds.midX - width / 2,
                              y: view.bounds.midY - height / 2,
                              width: width,
                              height: height)
        circle.layer.cornerRadius = width / 2
        
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(onCircle))
        view.addGestureRecognizer(panGestureRecognizer)
        
        view.addSubview(circle)

        // Do any additional setup after loading the view.
    }
    
    @objc func onCircle (gesture: UIPanGestureRecognizer) {
        let location = gesture.location(in: view)
        let x = location.x
        let y = location.y
        circle.frame = CGRect(x: x - width / 2, y: y - height / 2, width: width, height: height)
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
