import 'servidor_correo.dart';

void main() {
  var servidorA = ServidorCorreo();
  var servidorB = ServidorCorreo();

  servidorA.conectar();

  servidorA.enviarCorreo('maria@example.com', 'Informe mensual');
  servidorB.enviarCorreo('pedro@example.com', 'Reunión programada');

  print(servidorA == servidorB);
  print(servidorA.estaConectado);

  servidorB.desconectar();
}
