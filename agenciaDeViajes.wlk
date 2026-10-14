class PacksNacionales{
    var dias
    var provianciaDestino
    const precioBase
    const beneficiosEspeciales = []
    const coordiACargo = []
    const actsIncluidas = []
    method dias() = dias
    method precioBase() = precioBase
    method provianciaDestino() = provianciaDestino
    method beneficiosEspeciales() = beneficiosEspeciales
    method coordiACargo() = coordiACargo
    method actsIncluidas() =  actsIncluidas
    method valorFinal() = self.precioBase() + sumaValorBeneficios()
    method sumaValorBeneficios(){return beneficiosEspeciales().sum({b => b.costo()})}
}

class PacksInternacionales{
    var dias
    var precioBase
    var paisDestino
    var cantEscalas
    var esLugarDeInteres
    const beneficiosEspeciales = []
    const coordiACargo = []
    method esLugarDeInteres() = esLugarDeInteres
    method dias() = dias
    method precioBase() = precioBase
    method paisDestino() = paisDestino
    method cantEscalas() = cantEscalas
    method beneficiosEspeciales() = beneficiosEspeciales
    method coordiACargo() = coordiACargo
    method valorFinal() = (self.precioBase() + sumaValorBeneficios() * 0.2)
    method sumaValorBeneficios(){return }
}