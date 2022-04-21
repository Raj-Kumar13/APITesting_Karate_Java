Feature: To create a Java Script function and its working

  Scenario: To Create Java Script funtion and with and without parameter
    * def getIntValue = function() { return 10; }
    Then print " Returns function value ===> ",getIntValue()
    * def getRandomNumber = function() { return Math.floor((100) * Math.random()) ;}
    Then print " Return any Random number ===> ",getRandomNumber()
    # With Parameter
    * def getStringValue = function(arg1){return "hello " + arg1 ;}
    Then print " return string ===>",getStringValue("world")
