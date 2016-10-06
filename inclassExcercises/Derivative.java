interface Function{
	float evaluate(float point);
}

public class Derivative{
	final static float dx = 0.00001;
	public static float derive(Function f ,  float point){
		
		return (f.evaluate(point+dx) - f.evaluate(point))/dx;
	}
	
	public static Function derive(Function f){
		return new Function(){
			float evaluate(float x){
				return (f.evaluate(x + dx) - f.evaluate(x))/dx;
			}	
		}
	}

}
