class Packs{
    var property dias
    var property precioBase
    var property coordiACargo
    const property beneficiosEspeciales = []
    method coordiACargo() = coordiACargo
    method valorFinal() = self.precioBase() + self.sumaValorBeneficios()
    method sumaValorBeneficios(){return self.beneficiosEspeciales().sum({b => b.costo()})}
    method esPremium()
}

class PacksNacionales inherits Packs{
    var property provinciaDestino
    const actsIncluidas = []
    method actsIncluidas() =  actsIncluidas
    override method esPremium(){((self.dias() > 10) and (self.coordiACargo().altamenteCalificado()))}
}

class PacksInternacionales inherits Packs{
    var property paisDestino
    var property cantEscalas
    var property esLugarDeInteres
    override method valorFinal() =  super() * 0.2
}

class Coordinador{
    var property cantViajesRealizados
    var property estaMotivado
    var property añosDeExperiencia
    var property rol
    method cambiarRol(nuevoRol){rol = nuevoRol}
    method altamenteCalificado(){return (self.cantViajesRealizados() > 20 and self.cumpleSuRol())}
    method cumpleSuRol()
}

class Guia inherits Coordinador{
    override method cumpleSuRol(){self.estaMotivado}
}

class AsistenteLogistico inherits Coordinador{
    override method cumpleSuRol(){self.añosDeExperiencia() > 3}
}

class Acompañante inherits Coordinador{
    override method cumpleSuRol() {}
}

class BeneficiosEspeciales{
    var property tipo
    method costo() = tipo.costo()
}

class TrasladosVip inherits BeneficiosEspeciales{
    var costo = 300
    var estaVigente = true
}

class AccesoASalasVIP inherits BeneficiosEspeciales{
    var costo = 400
    var estaVigente = true
}

class SegurosAdicionales inherits BeneficiosEspeciales{
    var costo = 500
    var estaVigente = false
}