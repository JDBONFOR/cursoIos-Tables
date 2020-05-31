//
//  AppDelegate.swift
//  tablas
//
//  Created by Juan Bonforti on 25/05/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // Delegate: En iOS, un delegado (Delegate) es una clase que implementa un protocolo y realiza ciertas funciones en nomber de otra clase. Tambien se puede utilizar para notificar eventos.
    // AppDelegate: La clase AppDelegate es un lugar donde se manejan estados especiales de la clase. UiApplication. Estos estados son parta del ciclo de VIDA de la App en si, y se representan con varios funciones que son llamadas por iOS automaticamente denntro de la clase AppDelegate. La clase UiApplication le "delega" la responsabilidad a la clase AppDelegate de implementar dichas funciones.
    
    // Foreground = Primer plano, estado activo
    // Background = Fondo, Estado oculto.

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Sobrecarga del punto de inicio de la aplicacion despues de la personalizacion. (simula al viewDidLoad())
        print("Se activo la func application de AppDelegate")
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Se envía cuando la aplicación está a punto de pasar del estado activo al estado inactivo. Esto puede ocurrir por ciertos tipos de interrupciones temporales (por ejemplo, una llamada telefónica entrante o un mensaje SMS) o cuando el usuario sale de la aplicación y comienza la transición al estado de fondo(background).
        //  Utilice este método para hacer una pausa en las tareas en curso (task), desactivar los temporizadores(timers), e invalidar renderizado de gráficos. Los videojuegos deben utilizar este método para hacer pausa en el juego.
        print("Se activo la func applicationWillResignActive de AppDelegate")
    }
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Utilice este método para recursos, guardar los datos de usuario, invalidar temporizadores y almacenar suficiente información del estado actual de la aplicación en caso de que se cierre y tenga que abrir más adelante.
        // Si su aplicación es compatible con ejecución en segundo plano, este método se llama en lugar de applicationWillTerminate: cuando el usuario cierra la app.
        print("Se activo la func applicationDidEnterBackground de AppDelegate")
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Llamado como parte de la transición de estar en background a pasar a un estado activo; aquí se puede deshacer muchos de los cambios hechos al entrar en background.
        print("Se activo la func applicationWillEnterForeground de AppDelegate")
     }
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Aquí puedes reiniciar las tareas que se han detenido(o no ha empezado) mientras la aplicación estaba inactiva. Si la aplicación estaba previamente en el fondo (background), opcionalmente se puede actualizar la interfaz de usuario.
        print("Se activo la func applicationDidBecomeActive de AppDelegate")
    }
    func applicationWillTerminate(_ application: UIApplication) {
        // Se llama cuando la aplicación está a punto de terminar. Aqui puedes guardar los datos en caso de ser necesario.
        print("Se activo la func applicationWillTerminate de AppDelegate")
    }


}

