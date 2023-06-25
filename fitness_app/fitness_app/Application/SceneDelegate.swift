//
//  SceneDelegate.swift
//  fitness_app
//
//  Created by Элина Абдрахманова on 17.06.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = StatisticsViewController()
        window?.makeKeyAndVisible()
    }
}

