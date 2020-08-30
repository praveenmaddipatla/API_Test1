package Karate.Demo;

import com.intuit.karate.junit5.Karate;


public class TestRunner {
	
	@Karate.Test
    Karate testSample() {
        return Karate.run("Dog").relativeTo(getClass());
    }

}
