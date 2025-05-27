


class Login {}
  String? _usuario;
  String? _contrasena;

  String? get usuario => _usuario;
  String? get contrasena => _contrasena;
  
  set usuario(String? valor){
    _usuario = usuario; 
  }

  set contrasena(String? valor){
    _contrasena = contrasena;
  }
  
  Meterdatos(String usuario , String contrasena);


  Login({required this.usuario , required this.contrasena});

  
  