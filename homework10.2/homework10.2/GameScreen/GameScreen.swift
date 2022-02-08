//
//  GameScreen.swift
//  homework10.2
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
        
        let gestureRecognizerLeft = UISwipeGestureRecognizer(target: self, action: #selector(onSwipeLeft))
        gestureRecognizerLeft.direction = .left
        view.addGestureRecognizer(gestureRecognizerLeft)
        let gestureRecognizerRight = UISwipeGestureRecognizer(target: self, action: #selector(onSwipeRight))
        gestureRecognizerRight.direction = .right
        view.addGestureRecognizer(gestureRecognizerRight)
        let gestureRecognizerUp = UISwipeGestureRecognizer(target: self, action: #selector(onSwipeUp))
        gestureRecognizerUp.direction = .up
        view.addGestureRecognizer(gestureRecognizerUp)
        let gestureRecognizerDown = UISwipeGestureRecognizer(target: self, action: #selector(onSwipeDown))
        gestureRecognizerDown.direction = .down
        view.addGestureRecognizer(gestureRecognizerDown)
        
        view.addSubview(circle)
    }
    
    @objc func onSwipeLeft(gesture: UISwipeGestureRecognizer) {
        let rect = circle.frame.offsetBy(dx: 0, dy: 0)
        let leftRect = circle.frame.offsetBy(dx: -35, dy: 0)
        if circle.frame.minX >= 0 {
            circle.frame = leftRect
        } else {
            circle.frame = rect
        }
    }
    
    @objc func onSwipeRight(gesture: UISwipeGestureRecognizer) {
        let x = UIScreen.main.bounds.width
        let rect = circle.frame.offsetBy(dx: 0, dy: 0)
        let rightRect = circle.frame.offsetBy(dx: +35, dy: 0)
        if circle.frame.maxX <= x {
            circle.frame = rightRect
        } else {
            circle.frame = rect
        }
    }
    
    @objc  func onSwipeUp(gesture: UISwipeGestureRecognizer) {
        let rect = circle.frame.offsetBy(dx: 0, dy: 0)
        let upRect = circle.frame.offsetBy(dx: 0, dy: -35)
        if circle.frame.minY > 100 {
            circle.frame = upRect
        } else {
            circle.frame = rect
        }
    }
    
    @objc func onSwipeDown(gesture: UISwipeGestureRecognizer) {
        let y = UIScreen.main.bounds.height
        let rect = circle.frame.offsetBy(dx: 0, dy: 0)
        let downRect = circle.frame.offsetBy(dx: 0, dy: +35)
        if circle.frame.maxY <= y - height / 2 {
            circle.frame = downRect
        } else {
            circle.frame = rect
        }
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
