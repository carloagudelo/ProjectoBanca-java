package com.banca.bancanuova.model;

public class ContoCorrente {
    private double saldo;

    public ContoCorrente() {
        setSaldo(1000);  
    }

    public double faiUnDeposito(double importo) {
        if (importo > 0) {
            saldo += importo;
        }
        return saldo;
    }

    public double faiUnPrelievo(double exporto) {
        if (exporto > 0 && exporto <= saldo) {
            saldo -= exporto;
        }
        return saldo;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }
}