//
//  ViewController.swift
//  iOS StopWatch
//
//  Created by Ashari Juang on 8/14/15.
//  Copyright © 2015 kodejs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var time = 0
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func runner(){
        time++
        timeLabel.text = String(time)
    }

    @IBAction func startTimer(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: Selector("runner"), userInfo: nil, repeats: true)
    }

    @IBAction func pauseTimer(sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func resetTimer(sender: AnyObject) {
        timer.invalidate()
        timeLabel.text = "00"
        time = 0
    }
}

