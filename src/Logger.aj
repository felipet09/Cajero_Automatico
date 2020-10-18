
public aspect Logger {
    
	// Se define pointcut para todo tipo de metodos
	pointcut metodoLogger() : call( * ejemplo.cajero.Cajero..*(..));
	
	// Se define advice antes de ejecutar cada método 
	  before(): metodoLogger() {

	    System.out.println("Ejectando");
	    System.out.println("\t objeto     : " + thisJoinPoint.getTarget());
	    System.out.println("\t método     : " + thisJoinPoint.getSignature());
	    System.out.println("\t argumentos : " + thisJoinPoint.getArgs());
	  }
}
