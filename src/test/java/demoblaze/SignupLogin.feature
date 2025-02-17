Feature: Ejercicio Karate Signup - Login

  Scenario: Crear un nuevo usuario en signup
    Given url apiUrl + signup
    * print apiUrl + signup
    And request dataUser.newUser
    * print "Crear un nuevo usuario"
    * print dataUser.newUser
    When method post
    Then status 200
    * print "Se crear el nuevo usuario satisfactoriamente"

  Scenario: Intentar crear un usuario ya existente
    Given url apiUrl + signup
    * print apiUrl + signup
    And request dataUser.existingUser
    * print "Intentar crear un usuario ya existente"
    * print dataUser.existingUser
    When method post
    Then status 200
    And match response == { "errorMessage": "This user already exist." }
    * print "No permite crear el usuario ya que existe"

  Scenario:  Usuario y password correcto en login
    Given url apiUrl + login
    * print apiUrl + login
    And request dataUser.newUser
    * print "Usuario y password correcto en login"
    * print dataUser.newUser
    When method post
    Then status 200
    * print "Permite realizar el login satisfactoriamente"

  Scenario:  Usuario y password incorrecto en login
    Given url apiUrl + login
    * print apiUrl + login
    And request dataUser.incorrectUser
    * print "Usuario y password correcto en login"
    * print dataUser.incorrectUser
    When method post
    Then status 200
    And match response == { "errorMessage": "Wrong password." }
    * print "Error en el login por credenciales incorrectas"