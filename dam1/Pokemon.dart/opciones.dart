
void interaccion() {
  print('Selecciona una opción:');
  print('1. Saludar');
  print('2. Despedirse');

  String? opcion = stdin.readLineSync();

  if (opcion == '1') {
    print('¡Hola! ¿Cómo estás?');
  } else if (opcion == '2') {
    print('¡Adiós! Que tengas un buen día.');
  } else {
    print('Opción no válida.');
  }
}