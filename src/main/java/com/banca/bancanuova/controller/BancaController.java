package com.banca.bancanuova.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.banca.bancanuova.model.ContoCorrente;
import com.banca.bancanuova.model.User;

@Controller
public class BancaController {
   
    private ContoCorrente contoCorrente = new ContoCorrente();
    private User user = new User();

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/verifica")
    public ModelAndView verifica(
            @RequestParam(required = false) String user,
            @RequestParam(required = false) String pass,
            @RequestParam(required = false) String operazione,
            @RequestParam(required = false) String importo,
            @RequestParam(required = false) String exporto
    ) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("saldo", contoCorrente.getSaldo());

        // Verifica credenciales
        if (user != null && pass != null) {
            this.user.setUsername(user);
            this.user.setPassword(pass);
            
            if (this.user.getUsername().equals("pippo") && 
                this.user.getPassword().equals("123")) {
                mav.setViewName("benvenuto");
                return mav;
            } else {
                mav.setViewName("error");
                mav.addObject("errorMessage", "Credenziali non valide");
                return mav;
            }
        }

        // Operaciones bancarias
        if (operazione != null) {
            switch (operazione) {
                case "deposito":
                    mav.setViewName("deposito");
                    break;
                case "prelievo":
                    mav.setViewName("prelievo");
                    break;
                default:
                    mav.setViewName("error");
                    mav.addObject("errorMessage", "Operazione non valida");
            }
            return mav;
        }

        // Manejo de depósito
        if (importo != null) {
            try {
                double importoValue = Double.parseDouble(importo);
                double nuovoSaldo = contoCorrente.faiUnDeposito(importoValue);
                mav.addObject("saldo", nuovoSaldo);
                mav.setViewName("risultatoDeposito");
                return mav;
            } catch (NumberFormatException e) {
                mav.setViewName("error");
                mav.addObject("errorMessage", "Importo non valido");
                return mav;
            }
        }

        // Manejo de retiro
        if (exporto != null) {
            try {
                double exportoValue = Double.parseDouble(exporto);
                double nuovoSaldo = contoCorrente.faiUnPrelievo(exportoValue);
                mav.addObject("saldo", nuovoSaldo);
                mav.setViewName("risultatoPrelievo");
                return mav;
            } catch (NumberFormatException e) {
                mav.setViewName("error");
                mav.addObject("errorMessage", "Importo non valido");
                return mav;
            }
        }

        mav.setViewName("error");
        mav.addObject("errorMessage", "Richiesta non valida");
        return mav;
    }
}