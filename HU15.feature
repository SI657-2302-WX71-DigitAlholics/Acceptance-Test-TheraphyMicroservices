Feature: Visualización del perfil del paciente


Como fisioterapeuta, deseo visualizar el perfil del paciente para tener más información acerca de él.

Criterio de aceptación #1

  Scenario: El fisioterapeuta visualiza el perfil del paciente con historial

  Given que el fisioterapeuta está autenticado
  And que el paciente ha solicitado una consulta médica
  When el fisioterapeuta abre el perfil del paciente
  And el fisioterapeuta ha ingresado su historial
  Then el fisioterapeuta puede visualizar la siguiente información:
      Datos personales: <nombre>, <apellidos>, <fecha_de_nacimiento>, <dirección>, <teléfono>, <correo_electrónico>
      Antecedentes médicos: <historial_médico>, <alergias>

  Examples: 
    |   nombre  | apellidos | fecha_de_nacimiento |  dirección       |  teléfono  | correo_electrónico  |       historial        |   alergias   | 
    | Luis Albe | Pïneda Ug |    "2000-03-03"     | "Av lima 055456" | 955941321  |   "luis@email.com"  |"Derrame facial-Cancer" | "penicilina" |  

Criterio de aceptación #2

  Scenario: El fisioterapeuta visualiza el perfil del paciente sin historial

  Given que el fisioterapeuta está autenticado
  And que el paciente ha solicitado una consulta médica
  When el fisioterapeuta abre el perfil del paciente
  And el fisioterapeuta no ha ingresado su historial
  Then el fisioterapeuta puede visualizar la siguiente información:
      Datos personales: <nombre>, <apellidos>, <fecha_de_nacimiento>, <dirección>, <teléfono>, <correo_electrónico>
      Antecedentes médicos: <mensaje>

  Examples: 
    |   nombre  | apellidos | fecha_de_nacimiento |  dirección       |  teléfono  | correo_electrónico  |       mensaje            |  
    | Luis Albe | Pïneda Ug |    "2000-03-03"     | "Av lima 055456" | 955941321  |   "luis@email.com"  |"No hay datos ingresados" | 

    
