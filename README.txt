README
About GAP Project
Autor: Edber Elizondo

Para cerrar, para esta prueba se requerirá como entregables: 

- El código de las pruebas automatizadas (en la tecnología elegida por usted)

The Project was created on Java with Selenium. The file and directory structure described next:

Gap Project
|--app
|--config
|--db
|--doc
|--lib
|--log
|--doc
|--public
|--script
|--spec
|----mytest
|------vacation_request_spec.rb
|------new_user_spec.rb
|------public_id_spec.rb
|------login_account_spec.rb

To run the test from console:
rspec ./spec/mytest/file_name_spec.rb


- Escritura en un documento de algunos de los escenarios de prueba (en formato de Test Cases manuales). 

Find the manual - automated test cases next (Tab Test Cases - Automation):

Gap Project
|--
|----Docs
|------Automated testing.xlsx

- Reporte de al menos un defecto que considere importante resaltar (con un formato que considere adecuado). En caso de encontrar más de uno, puede describir aquel que considere más importante y los demás los puede poner como anotaciones sencillas de una sola oración. Por el contrario, en caso de no encontrar ningun defecto, favor escribir un reporte de alguna posible mejora por realizar a la aplicación.

Find Issue report next (Tab Issues - Comment):

Gap Project
|--
|----Docs
|------Automated testing.xlsx

Testing Preconditions:
System should have a "Test User" with the next data included:

User_Name 1: Test
User_Last_Name 1: User
User_ID: 123456789



