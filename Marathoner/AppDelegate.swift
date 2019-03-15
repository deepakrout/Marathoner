//
//  AppDelegate.swift
//  Marathoner
//
//  Created by Jonathan Wong on 2/6/19.
//  Copyright © 2019 Jonathan Wong. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var dataStore: DataStore?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let startsModel = DateModel(title: "Starts", date: Date(), isValid: true)
        let endsModel = DateModel(title: "Ends", date: Date(), isValid: true)
        dataStore = DataStore(dateModels: [startsModel, endsModel], weeks: 0)
        // swiftlint:disable force_cast
        let viewController = window?.rootViewController as! WorkoutViewController
        // swiftlint:enable force_cast
        viewController.dataStore = dataStore

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}
