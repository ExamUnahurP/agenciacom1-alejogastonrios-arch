class PacksNacionales{
    var property dias
    var property provinciaDestino
    var property precioBase
    const beneficiosEspeciales = []
    const coordiACargo = []
    const actsIncluidas = []
    method beneficiosEspeciales() = beneficiosEspeciales
    method coordiACargo() = coordiACargo
    method actsIncluidas() =  actsIncluidas
    method valorFinal() = self.precioBase() + sumaValorBeneficios()
    method sumaValorBeneficios(){return beneficiosEspeciales().sum({b => b.costo()})}
}

class PacksInternacionales{
    var property dias
    var property precioBase
    var property paisDestino
    var property cantEscalas
    var property esLugarDeInteres
    const beneficiosEspeciales = []
    const coordiACargo = []
    method beneficiosEspeciales() = beneficiosEspeciales
    method coordiACargo() = coordiACargo
    method valorFinal() = (self.precioBase() + sumaValorBeneficios() * 0.2)
    method sumaValorBeneficios(){return beneficiosEspeciales().sum({b => b.costo})}
}

class Coordinador{
    var property cantViajesRealizados
    var property estaMotivado
    var property añosDeExperiencia
    var property rol
    method cambiarRol(nuevoRol){rol = nuevoRol}
}

class BeneficiosEspeciales{
    var property tipo
    method costo() = tipo.costo()
}

object trasladosVip{
    var estaVigente = true 
    method costo() = 300
    method estaVigente() = estaVigente
}