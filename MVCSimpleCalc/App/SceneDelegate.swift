//
//  SceneDelegate.swift
//  MVCSimpleCalc
//
//  Created by Андрей Барсуков on 20.01.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // 1. Захват сцены
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // 2. Создание UIView с использованием конструктора, который принимает сцену
        let window = UIWindow(windowScene: windowScene)
        
        // 3. Программно содаем новый контроллер и интерируем в него NavigatorController
        let viewController = ViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        
        // 4. Определяем navigatorController as rootViewController
        window.rootViewController = navigationController
        
        // 5. Настройка window
        self.window = window
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

