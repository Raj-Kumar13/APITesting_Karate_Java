package com.api.automation.postRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class postRequest {
	@Test
	public Karate testRunner() {
		return Karate.run("JavaScriptFunctions").relativeTo(getClass());
	}

}
