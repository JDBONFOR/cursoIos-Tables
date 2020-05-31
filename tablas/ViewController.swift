//
//  ViewController.swift
//  tablas
//
//  Created by Juan Bonforti on 25/05/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit
// El table debe saber quien se hace cargo de manejar sus datos y funciones. Esto se hace delegandose por medio de protocolos de Tablas (UITableViewDelegate, UITableViewDataSource)
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tabla: UITableView!
     //Conexion de la tabla entre ViewController y la vista.
    
    var dataSourceTable = ["pdf1","pdf2","pdf3"]
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view.
        
        print("La funcion viewDidLoad de la tabla fue activada");
        
        tabla.dataSource = self; //self representacion de la ViewController, equivalente al THIS.
        tabla.delegate = self;
        
        // Reciclaje de vistas para optimizar memoria
        
    }
    
    // Sirve para obtener el numero de filas que tiene una tabla en cada seccion.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataSourceTable.count; // Cantidad de elementos del Array de elementos
    }
    
    // Sirve para devolver una celda que va a mostrar.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row) // Nos devuelve la posicion del Array como INT
        print(indexPath.section) // Seccion es si tenemos un Array dividido.
        
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell") // identificacion y estilos en base al prototipo para optimizar memoria.
        celda.textLabel?.text = dataSourceTable[indexPath.row];
        celda.imageView!.image = UIImage(named: "original.jpg");
        
        return celda;
    }

    
    
    // Funcion encargada de capturar la seleccion de la ROW, el contexto es con evento de touch.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // el _ es argument label, y se debe utilizar si a una funcion se lo indicas.
        
        print("estoy pulsando una fila \(indexPath.row)");
        
        let pdfId = indexPath.row
        
        // self : ViewController, ejecuta el performSegue y le pasamos el identifador del segue y el Id de la ROW.
        self.performSegue(withIdentifier: "screen2segue", sender: pdfId)
        
        
    }
    
    // Funcion encargada de preparar el llamado de una pantalla a otra (transicion)...
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // UIStoryboardSegue: corresponde al tipo
        // segue: seria el destino al que queremos llegar, si existe mas de 1 conexion por Storyboard
        // sender: de cualquier tipo, para aceptar cualquier cosa y opitonal, cambiarlo por el tipo a utilizar para que quede mejor tipado.
        
        
        // Simulamos un IF si existiese mas de un destino posible.
        if segue.identifier == "screen2segue" {
            let pdfIdRecibido = sender as! Int  // as! para sacarle el optional()
            
            let objPdf:ViewController2 = segue.destination as! ViewController2 // Obtengo, mediante el destino elegido, un objeto del tipo ViewController2
            
            objPdf.pdfIdRecibido = dataSourceTable[pdfIdRecibido]
            
        }
        
    }
    
    // funcion para eliminar row de una tabla, al retornar true indicamos que podemos editar las ROW.
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true;
    }
    
    // Funcion encargada habilitar el swype de la row para eliminar.
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            dataSourceTable.remove(at: indexPath.row) // Se le pasa el index del arreglo, a eliminar
            tableView.reloadData();  // Una vez eliminado, se debe recargar la tabla.
        }
        
    }
    
    
    // Funciones de ciclo de vida del ViewController
//    override func loadView(){
//        super.loadView()
//        print("La funcion loadView de pantalla #1 fue activada");
//    }
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(true)
//        print("La funcion viewWillAppear pantalla #1 fue activada");
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(true)
//        print("La funcion viewDidAppear pantalla #1 fue activada");
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(true)
//        print("La funcion viewWillDisappear pantalla #1 fue activada");
//    }
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(true)
//        print("La funcion viewDidDisappear pantalla #1 fue activada");
//    }
//    // Funcion encargada para el manejo de memoria.
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        print("La funcion didReceiveMemoryWarning pantalla #1 fue activada");
//    }


}

