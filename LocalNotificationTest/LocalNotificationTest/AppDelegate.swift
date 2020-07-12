//
//  AppDelegate.swift
//  LocalNotificationTest
//
//  Created by Naw Su Su Nyein on 7/12/20.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let notificationCenter = UNUserNotificationCenter.current()
        let options : UNAuthorizationOptions = [.alert,.sound,.badge]
        notificationCenter.requestAuthorization(options: options){(didAllow, error) in
            if !didAllow{
                print("User didn't allow notification")
            }else{
                print("User allow notification")
            }
        }
        
       
        return true
        
    }
}

