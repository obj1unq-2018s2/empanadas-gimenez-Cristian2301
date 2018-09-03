object gimenez {
	var sueldo = 15000
	var totalQueCobro = 0
	var deuda = 0
	var dinero = 0
	
	method sueldo() { 
		return sueldo
	}
	method sueldo(nuevoValor) {
		 sueldo = nuevoValor
	}
	method cobrarSueldo(){
		totalQueCobro = totalQueCobro + sueldo
		dinero = dinero + sueldo
		if(dinero >= deuda){
			dinero = dinero - deuda
			deuda = 0
		}
		else{
			deuda = deuda - dinero
			dinero = 0
		}
	}
	method totalCobrado(){
		return totalQueCobro
	}
	method gastar(cuanto){
	     if(dinero < cuanto){
	     	deuda = deuda + (cuanto - dinero)
	     	dinero = 0
	     }
	     else{
	     	dinero = dinero - cuanto
	     }
	}
	method totalDeuda(){
		return deuda 
	}
	method totalDinero(){
		return dinero
	}
}


object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
    var dinero = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	method sueldo(){
	    return cantidadEmpanadasVendidas * montoPorEmpanada
    }  
    method cobrarSueldo(){
		dinero = self.sueldo()
    }
    method totalCobrado(){}
    method totalDeuda(){}
    method totalDinero(){}
}


object galvan {
	var dinero = 300000
	
	method dinero() { 
		return dinero
	}
	method pagarA(empleado) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
    }
}


