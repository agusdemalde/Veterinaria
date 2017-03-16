<html>
  <head>
    <meta name="layout" content="main">
    <title>Bienvenido</title>
  </head>
  <body id="bienvenido">
    <g:img dir="images" file="pets.png" align="right" style="position:relative;right:30px;"/>
    <h2><g:message code="Bienvenido"/></h2>

    <ul>
      <li><g:link controller="responsable" action="find">Buscar Responsable</g:link></li>
      <li><g:link action="veterinarios">Mostrar todos los veterinarios</g:link></li>
      <li><g:link action="tutorial">Tutorial</g:link></li>
    </ul>
  </body>
</html>