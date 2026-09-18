void main() {
  // Matriz de 3x3 representada como una lista bidimensional
  List<List<int>> M = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  print('Recorrido en Espiral:');
  recorridoEspiral(M);
}

void recorridoEspiral(List<List<int>> M) {
  int arriba = 0;
  int abajo = 2;
  int izq = 0;
  int der = 2;

  while (arriba <= abajo && izq <= der) {
    // 1. Izquierda a Derecha por fila superior
    for (int j = izq; j <= der; j++) {
      print('M[$arriba][$j] = ${M[arriba][j]}');
    }
    arriba = arriba + 1;

    // 2. Arriba hacia Abajo por columna derecha
    for (int i = arriba; i <= abajo; i++) {
      print('M[$i][$der] = ${M[i][der]}');
    }
    der = der - 1;

    // 3. Derecha a Izquierda por fila inferior
    if (arriba <= abajo) {
      for (int j = der; j >= izq; j--) {
        print('M[$abajo][$j] = ${M[abajo][j]}');
      }
      abajo = abajo - 1;
    }

    // 4. Abajo hacia Arriba por columna izquierda
    if (izq <= der) {
      for (int i = abajo; i >= arriba; i--) {
        print('M[$i][$izq] = ${M[i][izq]}');
      }
      izq = izq + 1;
    }
  }
}