Feature: Clarin test

  Scenario: Clarin Tapa test
  	Given I go to https://www.clarin.com/
    And I verify that "Buenos Aires" is above the temperature
	And I verify that the gray banner on top has a row with the following order: "ULTIMAS NOTICIAS - POLITICA - MUNDO - SOCIEDAD - POLICIALES - DEPORTES - ESPECTACULOS - CLASIFICADOS"
	Then I verify that todays date is indicated in the following format: "Dia, dd de mes de yyyy"
