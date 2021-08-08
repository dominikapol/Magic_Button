//
//  ViewController.swift
//  homework_lesson6_number2
//
//  Created by Dominika Poleshyck on 7.08.21.
//

import UIKit

class ViewController: UIViewController {
    var button: UIButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        button = UIButton(frame: CGRect(x: 170, y: 400, width: 50, height: 50))
        button.layer.cornerRadius = 25
        button.backgroundColor = .purple
        button.addTarget(self, action: #selector(pressButton) , for: .touchUpInside)
        button.tag = 1
        button.setTitle("Press", for: .normal)
        view.addSubview(button)
    }
    
    @objc func pressButton() {
        button.isHidden = true
        backgroundOne()
        backgroundTwo()
        backgroundThree()
        backgroundFour()
    }
    
    func backgroundOne() {
        let firstBackground: UIView = UIView(frame: CGRect(x: 0,  y: 0, width: self.view.frame.maxX / 2, height: self.view.frame.maxY / 2))
        firstBackground.backgroundColor = .purple
        view.addSubview(firstBackground)
    }
    
    func backgroundTwo() {
        let secondBackground: UIView = UIView(frame: CGRect(x: self.view.frame.maxX / 2,  y: 0, width: self.view.frame.maxX / 2, height: self.view.frame.maxY / 2))
        secondBackground.backgroundColor = .orange
        view.addSubview(secondBackground)
    }
    
    func backgroundThree() {
        let thrithBackground: UIView = UIView(frame: CGRect(x: 0,  y: self.view.frame.maxY / 2, width: self.view.frame.maxX / 2, height: self.view.frame.maxY / 2))
        thrithBackground.backgroundColor = .black
        view.addSubview(thrithBackground)
    }
    
    func backgroundFour() {
        let fourthBackground: UIView = UIView(frame: CGRect(x: self.view.frame.maxX / 2,  y: self.view.frame.maxY / 2, width: self.view.frame.maxX / 2, height: self.view.frame.maxY / 2))
        fourthBackground.backgroundColor = .white
        view.addSubview(fourthBackground)
    }
}
