//
//  ViewController.swift
//  Galeria
//
//  Created by ServicioSocial on 28/04/22.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var Imagen: UIImageView!
    //Creamos una constante que contenga un arreglo con los nombres de  nuestras imagenes
    let ListaImagenes = ["Imagen1","Imagen2","Imagen3","Imagen4","Imagen5"]
    //Se crea una cariable auxiliar y la inicializamos ebn Cero
    var Indice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        //Creamos una funcion para el boton de siguiente
    @IBAction func Siguiente(_ sender: Any) {
        //Usamos la variable auxiliar para guardar la posicion actual de la imagen mostrada y lo movemos un espacio para mostrar la siguiente imagen en el arreglo
        Indice += 1
        //Con un condicional podemo hacer que despues de la ultima imagen regrese a la primera
        if Indice >= ListaImagenes.count {
            Indice = 0
        }
        //Llamamos a la funcion actualizar
        actualizar()
    }
    //De manera omologa creamos una funcion para el boton anterior
    @IBAction func Anterior(_ sender: Any) {
        Indice -= 1
        
        if Indice < 0 {
            Indice = ListaImagenes.count-1
        }
        actualizar()
    }
    //En la funcion actualizar creamos una constante en con la que se va moviendo el indice dentro del arreglo para despues cambiar la propiedade de "Image" en nuestro contenedor principal
    func actualizar(){
        let ac = ListaImagenes[Indice]
        Imagen.image = UIImage(named: ac)
    }
    
}

