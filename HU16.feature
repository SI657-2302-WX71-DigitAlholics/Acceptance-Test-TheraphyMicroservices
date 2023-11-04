Feature: Comunicación con pacientes

Como fisioterapeuta, deseo comunicarme con los pacientes que me han solicitado una consulta médica para que acordemos el horario y el pago de la consulta.

Criterio de aceptación #1

Scenario: El fisioterapeuta envía un correo electrónico al paciente

  Given que el fisioterapeuta tiene la solicitud de consulta del paciente
  And que el paciente ha seleccionado el correo electrónico como su método de comunicación preferido
  When el fisioterapeuta envía un correo electrónico al paciente para acordar el horario de la consulta
  Then el paciente responde al correo electrónico del fisioterapeuta
  And el fisioterapeuta registra el horario de la consulta y el método de pago acordado

  
  Criterio de aceptación #2
  
Scenario: El fisioterapeuta envía un correo electrónico al paciente con un horario propuesto

Given que el fisioterapeuta tiene la solicitud de consulta del paciente
  And que el paciente ha seleccionado el correo electrónico como su método de comunicación preferido
  When el fisioterapeuta envía un correo electrónico al paciente con un horario propuesto para la consulta
  Then el paciente responde al correo electrónico del fisioterapeuta
  And el fisioterapeuta registra el horario de la consulta y el método de pago acordado
  

 
  Criterio de aceptación #3

Scenario: El paciente no responde al correo electrónico del fisioterapeuta

  Given que el fisioterapeuta tiene la solicitud de consulta del paciente
  And que el paciente ha seleccionado el correo electrónico como su método de comunicación preferido
  When el fisioterapeuta envía un correo electrónico al paciente para acordar el horario de la consulta
  Then el paciente no responde al correo electrónico
  And el fisioterapeuta envía un correo electrónico de seguimiento al paciente


