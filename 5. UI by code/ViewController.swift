//
//  ViewController.swift
//  5. UI by code
//
//  Created by Miras Maratov on 08.05.2023.
//

import UIKit

class ViewController: UIViewController {

// MARK: - property
var myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 80))
 
// MARK: - life cycle func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        
    }

// MARK: - flow func
    @objc private func changeXY() {
        
        let randomX = Int.random(in: 0...Int(view.frame.size.width)-100)
        let randomY = Int.random(in: 50...Int(view.frame.size.height)-80)
        self.myButton.frame.origin.x = Double(randomX)
        self.myButton.frame.origin.y = Double(randomY)
    
    }
    
    private func configureView(){
        
        myButton.setTitle("Press", for: .normal)
        myButton.backgroundColor = .green
        self.view.addSubview(myButton)
        myButton.center = view.center
        myButton.layer.cornerRadius = 12
        myButton.addTarget(self, action: #selector(changeXY), for: .touchUpInside)

    }
}



    
