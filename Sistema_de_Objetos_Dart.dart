class Objeto {
  final int objeto;
  final String descripcion;
  final String lugar;

  Objeto(this.objeto, this.descripcion, this.lugar);

  int getObjeto() => objeto;

  String getDescripcion() => descripcion;

  String getLugar() => lugar;
}

class Usuario {
  final int idObjeto;
  final String descripcion;
  final String lugar;

  Usuario(this.idObjeto, this.descripcion, this.lugar);

  int getIdObjeto() => idObjeto;
  String getDescripcion() => descripcion;
  String getLugar() => lugar;
}

class Registro {
  int idRegistro;
  bool tipo;
  DateTime fecha;
  String descripcion;

  Registro(this.descripcion, this.fecha, this.idRegistro, this.tipo);

  int getIdRegistro() {
    return idRegistro;
  }

  bool getTipo() {
    return tipo;
  }

  DateTime getFecha() {
    return fecha;
  }

  String getDescripcion() {
    return descripcion;
  }
}
