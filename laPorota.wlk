object laPorota {
    var stock = 100
    var precio = 2
    method stock()= stock
    method vender(cantidadDePorotos, comprador){
        comprador.pagar(precio*cantidadDePorotos)
        stock = stock - cantidadDePorotos
    }
}
class Comprador{
    var medioDePago 
    method pagar(montoAPagar){
        medioDePago.pagar(montoAPagar)
    } 
}
class TarjetaDeDebito{
    var saldoDisponible
    method pagar(monto){
        if(saldoDisponible < monto) throw new DomainException(message="No hay saldo")
        saldoDisponible = saldoDisponible - monto
    }
}
class TarjetaDeCredito{
    var deuda = 0
    method pagar(monto){
        deuda = deuda + monto
    }
}

