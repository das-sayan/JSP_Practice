import static org.junit.Assert.*;
import java.util.Arrays;
import java.util.Collection;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;


@RunWith(Parameterized.class)
public class ParameterizeJutil {

	int expected;
	int actualinput;
	public ParameterizeJutil(int expected, int actualinput) {
		
		super();
		this.expected=expected;
		this.actualinput=actualinput;
		System.out.println("Const: "+expected+" "+actualinput);		
	}
	
	 @Parameters
	 public static Collection<Object[]>add12(){

	 return Arrays.asList(new Object[][]
	  {
	  {25,5},{100,10},{144,12}
	  });
	 }
	@Test
	public void sum() {
		CalC c = new CalC();
		assertEquals(expected,c.taxcal(actualinput));
		
	}

}
