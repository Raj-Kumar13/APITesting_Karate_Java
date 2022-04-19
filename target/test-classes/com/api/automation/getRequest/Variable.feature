Feature: variable creation in karate Framword

Background: Basic Setup
		Given def backG_Value = 10
		And  def backG_username = "BackGround User - Remo"

Scenario: To create a variable
		 Given def a = 10
		 And def userName = " Rocky "
		 Then print ' ================= Scenario -1 ========================================='
		 Then print " value of a ==> ",a
		 And print " userName ==> ", userName
		 
Scenario: To check the values of Different Scenario
			Then print ' ================= Scenario -2 ========================================='
			* print " Value of a ==> ",a
			* print	" User Name ==> ",userName	  
			
Scenario: Use Background variables inside Scenario
  		Then print ' ================= Scenario -3 ========================================='
	    * print " Background value ==>  ",backG_Value	
	    * print " Background user Name ==>  ",backG_username
	    * print " add 10 to Background value ==>  ",backG_Value + 10			