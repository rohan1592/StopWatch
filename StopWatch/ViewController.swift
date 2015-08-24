//
//  ViewController.swift
//  StopWatch
//
//  Created by Rohan Sachdev on 8/19/15.
//  Copyright © 2015 TheRohanSachdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var time = 0
    func increment()
    {
        Output.text = String(time)
        time++
        
    }
    @IBOutlet weak var Output: UILabel!
    @IBAction func StopButton(sender: AnyObject) {
        timer.invalidate()
        Output.text = String(0)
        time = 0
    }
    @IBAction func PauseButton(sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func PlayButton(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increment"), userInfo: nil, repeats: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

