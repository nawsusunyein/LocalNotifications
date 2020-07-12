//
//  ViewController.swift
//  LocalNotificationTest
//
//  Created by Naw Su Su Nyein on 7/12/20.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnSendLocalNotification : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func sendLocalNotificationAction(_ sender : Any){
        print("Touch here")
        self.sendingLocalNotiByTitle(notificationType: "Local Notification")
    }

    func sendingLocalNotiByTitle(notificationType : String){
        let content = UNMutableNotificationContent()
        content.title = notificationType
        content.subtitle = "Morning Greeting"
        content.body = "This is an example of how to create " + content.title
        content.sound = UNNotificationSound.default
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let identifier = notificationType
        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request){(error) in
            if let error = error{
                print("Notification error is \(error.localizedDescription)")
            }
        }
    }
    
    
}

