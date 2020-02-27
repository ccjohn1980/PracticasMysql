package controlador;


import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import modelo.Modelo;
import vista.VISTA;

public class Controlador implements ActionListener {
    
    private VISTA view;
    private Modelo model;
    
    public Controlador (VISTA view, Modelo model )
    {
        this.view=view;
        this.model=model;
        this.view.btnMultiplicar.addActionListener(this);
    }
    
    public void iniciar ()
    {
        view.setTitle ("MVC Multiplicar");
        view.setLocationRelativeTo(null);
    }
         
    public void actionPerformed (ActionEvent e) 
    {
        model.setNum1(Integer.parseInt(view.txtNum1.getText()));
        model.setNum2(Integer.parseInt(view.txtNum2.getText()));
        model.multiplicar();
        view.txtResultado.setText(String.valueOf(model.getResultado()));
    }
    
    
    
}
