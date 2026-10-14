class Packs{
    var property dias
    var property precioBase
    const property beneficiosEspeciales = []
    const property coordiACargo = []
    method coordiACargo() = coordiACargo
    method valorFinal() = self.precioBase() + self.sumaValorBeneficios()
    method sumaValorBeneficios(){return self.beneficiosEspeciales().sum({b => b.costo()})}
}

class PacksNacionales{
    var property provinciaDestino
    const actsIncluidas = []
    method actsIncluidas() =  actsIncluidas
}

class PacksInternacionales{
    var property paisDestino
    var property cantEscalas
    var property esLugarDeInteres
    override method valorFinal() = (self.precioBase() + sumaValorBeneficios() * 0.2)
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