Feature: variable creation in karate Framword

Scenario: To create a variable
		 Given def a = 10
		 And def userName = " Rocky "
		 Then print " value of a ==> ",a
		 And print " userName ==> ", userName 