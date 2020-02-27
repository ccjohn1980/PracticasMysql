
package modelo;

public class Modelo {
    private int Num1;
    private int Num2;
    private int Resultado;

    public int getNum1() {
        return Num1;
    }

    public void setNum1(int Num1) {
        this.Num1 = Num1;
    }

    public int getNum2() {
        return Num2;
    }

    public void setNum2(int Num2) {
        this.Num2 = Num2;
    }

    public int getResultado() {
        return Resultado;
    }

    public void setResultado(int Resultado) {
        this.Resultado = Resultado;
    }
    
    public int multiplicar(){
    
        this.Resultado = this.Num1 * this .Num2;
        return this.Resultado;
    }

}