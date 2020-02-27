package app_practica1;

import controlador.Controlador;
import modelo.Modelo;
import vista.VISTA;

public class App_Practica1 {

       public static void main(String[] args) {
           Modelo mod = new Modelo ();
           VISTA view = new VISTA  ();
           
           Controlador ctrl = new Controlador  (view, mod);
           ctrl.iniciar();
           view.setVisible(true);
    }
    
}
