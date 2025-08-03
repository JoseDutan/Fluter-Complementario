void main() {
  Map<String, int> poblacion = {
    'Quito': 20000000,
    'Cuenca': 6000000,
    'Guayaquil': 2800000,
  };

  print(poblacion);
  print(poblacion.keys);
  print(poblacion.values);
  print(poblacion.containsKey('Ambato'));
  print(poblacion['Cuenca']);
  poblacion['Loja'] = 400000;
  print(poblacion);
  poblacion['Quito'] = 100;
  print(poblacion);
  poblacion.remove('Cuenca');
  print(poblacion);

  Map<String, List<String>> regiones = {
    'Costa': ['Guayaquil', 'Manta'],
    'Sierra': ['Quito', 'Cuenca', 'Loja'],
    'Oriente': ['Tena', 'Puyo'],
  };

  print(regiones['Sierra']);
  print(regiones['Sierra']![1]);
}
