class Cliente{
  int? _idcliente;
  int? _nif;
  int? _telefono;
  double? _riesgo;
  String? _razonsocial;
  String? _direccion;
  String? _email;
  

  int? get idcliente => _idcliente;
  int? get nif => _nif;
  int? get telefono => _telefono;
  double? get riesgo => _riesgo;
  String? get razonsocial => _razonsocial;
  String? get direccion => _direccion;
  String? get email => _email;
  

  set idcliente(int? valor) {
    _idcliente = valor;
  }

  set nif(int? valor) {
    _nif = valor;
  }

  set telefono(int? valor) {
    _telefono = valor;
  }

  set riesgo(double? valor) {
    _riesgo = valor;
  }

  set razonsocial(String? valor) {
    _razonsocial = valor;
  }

  set direccion(String? valor) {
    _direccion = valor;
  }

  set email(String? valor) {
    _email = valor;
  }

  Future<bool> registrarCliente() async {
     bool guardado = false;
     var conn;
     try{
       conn = await DataBase.obtenerConexion();
       await conn.query("INSERT INTO clientes (razonsocial,nif,direccion,telefono,email,riesgo) VALUES (?,?,?,?,?,?,)",[razonsocial,nif,direccion,telefono,email,riesgo]);

     }
  }
}