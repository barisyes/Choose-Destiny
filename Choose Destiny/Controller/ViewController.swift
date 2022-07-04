//
//  ViewController.swift
//  Choose Destiny
//
//  Created by Barış Yeşilkaya on 3.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func pressButton(_ sender: UIButton) {
        story.checkAnswer(sender.currentTitle!)
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        textLabel.text = story.getTextTitle()
        button1.setTitle(story.getButton1Text(), for: .normal)
        button2.setTitle(story.getButton2Text(), for: .normal)
    }
}

