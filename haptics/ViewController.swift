//
//  ViewController.swift
//  haptics
//
//  Created by Amir Bakhshi on 2021-10-24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: - Notification Haptics
    @IBAction func btn1(_ sender: UIButton) {
        HapticManager.instance.notification(type: .success)
    }
    @IBAction func btn2(_ sender: UIButton) {
        HapticManager.instance.notification(type: .warning)
        
    }
    @IBAction func btn3(_ sender: UIButton) {
        HapticManager.instance.notification(type: .error)
    }
    
    //MARK: - Impact Haptics
    
    @IBAction func softPressed(_ sender: UIButton) {
        HapticManager.instance.impact(style: .soft)
    }
    
    @IBAction func lightPressed(_ sender: UIButton) {
        HapticManager.instance.impact(style: .light)
    }
    @IBAction func mediumPressed(_ sender: UIButton) {
        HapticManager.instance.impact(style: .medium)
    }
    
    @IBAction func rigidPressed(_ sender: UIButton) {
        HapticManager.instance.impact(style: .rigid)
    }
    @IBAction func heavyPressed(_ sender: UIButton) {
        HapticManager.instance.impact(style: .heavy)
    }
    
}

class HapticManager {
    static let instance = HapticManager()
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}
