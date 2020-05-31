//
//  ViewController2.swift
//  tablas
//
//  Created by Juan Bonforti on 25/05/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit
import WebKit

class ViewController2: UIViewController {
    @IBOutlet var webView: WKWebView!
    
    var pdfIdRecibido:String? // Lo recibo por medio del segur de ViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewPdf();
    }
    
    func viewPdf(){

        // 1 conseguir direccion del PDF, se debe crear objeto URL
        // Se utiliza la clase URL(fileURLWithPath...) se le indica el resource, el tipo y el directorio si es un archivo local, sino, no se le pasa este ultimo)
        let urlPdf = URL(fileURLWithPath: Bundle.main.path(forResource: pdfIdRecibido!, ofType: "pdf", inDirectory: "PDF")!)
        
        // 2 transformar los datos ( Data )
        // Utilizar try? para validar la transformacion en base a la URL y manejar el error por el catch. Se utiliza la clase Data(contentsOf: URL) con la direccion obtenida en el paso 1.
        let pdfData = try? Data(contentsOf: urlPdf)
                
        // 3 mostrar datos en el webView
        webView.load(pdfData!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: urlPdf)
        
    }
    
    
    // Funciones de ciclo de vida del ViewController
//    override func loadView(){
//        super.loadView()
//        print("La funcion loadView de pantalla #2 fue activada");
//    }
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(true)
//        print("La funcion viewWillAppear pantalla #2 fue activada");
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(true)
//        print("La funcion viewDidAppear pantalla #2 fue activada");
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(true)
//        print("La funcion viewWillDisappear pantalla #2 fue activada");
//    }
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(true)
//        print("La funcion viewDidDisappear pantalla #2 fue activada");
//    }
//
//    // Funcion encargada para el manejo de memoria.
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        print("La funcion didReceiveMemoryWarning pantalla #1 fue activada");
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
