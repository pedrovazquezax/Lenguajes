//EQUIPO
//Esquivel Mejia Zazil
// Kavanagh Mejia José Eduardo
//Palomares Orihuela Jonathan 
//Vazquez Rodriguez Pedro Antonio

public class TestTarea1{

	public static int Menu(){
		int opcion;
		do{
			opcion = Teclado.entero("\n1)Suma de vectores\n2)Resta de vectores\n3)Norma o Magnitud\n4)Producto escalar\n5)Angulo entre vectores\n6)Todo lo anterior \n7)Salir\n\tOpcion: ");
			if (opcion >7 || opcion <1)
				System.out.println("opcion no valida...");
		}while(opcion <1 || opcion >7);
		return opcion;
	}
	

	public static void main(String[] args){
		int opcion;


		Tarea1 vectores= new Tarea1(Teclado.entero("Dimension de los vectores: "));
	
		
		do{
			opcion=Menu();
			switch(opcion){
				
				case 1:
				  vectores.Suma();
				break;
				
				case 2:
					  vectores.Resta();
				break;

				case 3:
					 vectores.Norma();
				break;
				
				case 4: 
					vectores.Escalar();

				break;
				
				case 5:
					vectores.Angulo();
				break;
					
				case 6:
					vectores.Suma();

					vectores.Resta();

					vectores.Norma();

					vectores.Escalar();

					vectores.Angulo();
					
				break;


			}
		}while(opcion!=7);



	}
}