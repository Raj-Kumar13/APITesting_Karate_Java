package com.api.automation.getRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class getRequest {
	
	@Test
	public Karate runAllTest() {
		return Karate.run("XmlValidation").relativeTo(getClass());
	}

	//@Test
	public Karate rullTestUsingClassPath() {
		return Karate.run("classpath:com/api/automation/getRequest/getRequest.feature");
	}
}
