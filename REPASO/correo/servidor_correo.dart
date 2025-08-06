class ServidorCorreo {
  static final ServidorCorreo _instancia = ServidorCorreo._privado();
  bool _conectado = false;
  ServidorCorreo._privado();
  factory ServidorCorreo() {
    return _instancia;
  }
  bool get estaConectado => _conectado;

  void conectar() {
    if (!_conectado) {
      _conectado = true;
      print('Servidor conectado exitosamente.');
    } else {
      print('Ya existe una conexión activa.');
    }
  }

  void enviarCorreo(String destinatario, String asunto) {
    if (_conectado) {
      print('Correo enviado a $destinatario con asunto: "$asunto".');
    } else {
      print('Error: El servidor no está conectado.');
    }
  }

  void desconectar() {
    if (_conectado) {
      _conectado = false;
      print('Servidor desconectado.');
    } else {
      print('No hay una conexión activa que cerrar.');
    }
  }
}
