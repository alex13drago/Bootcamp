//
//  AppDelegate.swift
//  BootcampAppDemo
//
//  Created by Alex Sors on 21/02/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
        // Override point for customization after application launch.
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("Estará en reposo")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Está en reposo")
        let controller = window?.rootViewController as? ViewController
        controller?.addCountEnterBackground()
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("terminará")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("Estará en pantalla")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("Está en pantalla")
    }
    
}

