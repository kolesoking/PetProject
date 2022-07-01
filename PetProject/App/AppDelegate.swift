//
//  AppDelegate.swift
//  PetProject
//
//  Created by катя on 17.06.2022.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController(rootViewController: LoginViewController())
        
        return true
    }
    func applicationWillTerminate(_ application: UIApplication) {
        StorageManager.shared.SaveCotext()
    }
}

