//EQUIPO
//Esquivel Mejia Zazil
// Kavanagh Mejia José Eduardo
//Palomares Orihuela Jonathan 
//Vazquez Rodriguez Pedro Antonio
class Tarea1{
//atributos
		private double vector1[];
		private double vector2[];
		private int max;
	
	//constructores 


	public Tarea1(int max1){
		max=max1;
		vector1=new double[max];
		vector2=new double[max];
		

		for (int i=0;i<max;i++){
			vector1[i]=Teclado.Double("Dame el valor de Vector1 ["+i+"]=");
			vector2[i]=Teclado.Double("Dame el valor de Vector2 ["+i+"]=");
		}
		

	}
	//metodos

	public void Suma(){
		System.out.print("El vector resultante de la suma es (");
		for (int i=0;i<max;i++){
			System.out.print(" "+(vector1[i]+vector2[i])+", ");
		}
		System.out.print(")\n");

	}
	public void Resta(){
		System.out.print("El vector resultante de la resta es (");
		for (int i=0;i<max;i++){
			System.out.print(" "+(vector1[i]-vector2[i])+", ");
		}
		System.out.print(")\n");

	}
	public void Norma(){
		double aux=0;
		double aux1=0;
		for (int i=0;i<max;i++){
			aux=aux+(vector1[i]*vector1[i]);
		}

		for (int i=0;i<max;i++){
			aux1=aux1+(vector2[i]*vector2[i]);	
		}
		aux=Math.sqrt(aux);
		aux1=Math.sqrt(aux1);
		System.out.println("La Norma del primer vector es = "+String.format("%.4f", aux)+" y la del segundo vector "+String.format("%.4f", aux1));

	}
	public void Escalar(){
		double aux=0;

		for (int i=0;i<max;i++){
			aux=aux+(vector1[i]*vector2[i]);
		}
		System.out.println("El producto escalar entre los vectores es ="+aux);
		

	}


	public void Angulo(){
		double n1=0;
		double n2=0;
		double escalar=0;
		double aux=0;

		 for (int i=0;i<max;i++){
			escalar=escalar+(vector1[i]*vector2[i]);
		}
			for (int i=0;i<max;i++){
			n1=n1+(vector1[i]*vector1[i]);
		}

		for (int i=0;i<max;i++){
			n2=n2+(vector2[i]*vector2[i]);	
		}
		n1=Math.sqrt(n1);
		n2=Math.sqrt(n2);
		aux=Math.toDegrees(Math.acos((escalar/(n1*n2))));
		System.out.println("El angulo entre los vectores es ="+String.format("%.4f", aux)+"º");
		
	}


	




}
