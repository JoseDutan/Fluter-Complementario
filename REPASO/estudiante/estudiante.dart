class Estudiante {
  final String nombre;
  late String cuaderno;
  static String pizarra = 'Limpia';
  static const escuela = '14 de Julio';
  static int _contadorEstudiante = 0;

  void escribirEnPizarra(String mensaje) {
    pizarra = mensaje;
  }

  static ObtenerContador() {
    return _contadorEstudiante;
  }

  Estudiante(this.nombre) {
    _contadorEstudiante++;
  }
}

void main() {
  print(Estudiante._contadorEstudiante);
}
