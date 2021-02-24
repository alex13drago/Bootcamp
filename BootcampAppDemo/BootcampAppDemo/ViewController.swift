//
//  ViewController.swift
//  BootcampAppDemo
//
//  Created by Alex Sors on 21/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var didEnterBackgroundLabel: UILabel!
    @IBOutlet var willResignActiveLabel: UILabel!
    @IBOutlet var willTerminateLabel: UILabel!
    @IBOutlet var willEnterForegroundLabel: UILabel!
    @IBOutlet var didBecomeActiveLabel: UILabel!
    
    public struct LifeCycleCalls {
        var didEnterBackground = 0
        var willResignActive = 0
        var willTerminate = 0
        var willEnterForeground = 0
        var didBecomeActive = 0
    }
    
    public var calls: LifeCycleCalls = LifeCycleCalls()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    public func addCountEnterBackground() {
        calls.didEnterBackground += 1
        didEnterBackgroundLabel.text = "didEnterBackground = \(calls.didEnterBackground)"
    }
}

