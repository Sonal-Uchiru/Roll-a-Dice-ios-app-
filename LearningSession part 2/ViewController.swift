//
//  ViewController.swift
//  LearningSession part 2
//
//  Created by sonal jayawardana on 2021-12-16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var rollBtn: UIButton!
    @IBOutlet weak var diceTotalValueTxt: UILabel!
    @IBOutlet weak var secondDice: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
  
    @IBAction func rollTheDice(_ sender: Any) {
        let firstDiceNumber = Int.random(in: 1..<7)
        let secondDiceNumber = Int.random(in: 1..<7)
    
        let firstDiceImageName = "Dice-" + String(firstDiceNumber)
        let secondDiceImageName = "Dice-" + String(secondDiceNumber)
        
        firstDice.image = UIImage(named: firstDiceImageName)
        secondDice.image = UIImage(named: secondDiceImageName)
        diceTotalValueTxt.text = String(firstDiceNumber + secondDiceNumber)
        
    }
    
//    @IBAction func viewNextController(_sender : Any){
//        guard let vc = storyboard?.instantiateViewController(withIdentifier: "secondStoryboard") as? SecondViewController else{
//            //print("gg")
//            return
//        }
//    
//        present(vc,animated: true)
//            
//    }
    
  
    
    

}

