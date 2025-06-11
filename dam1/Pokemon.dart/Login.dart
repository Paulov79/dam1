
class Login {
  String _usuarioCorrecto = "Pablo";
  String _contrasenaCorrecta = "Pablo123";

  bool autenticar(String usuario, String contrasena) {
    return usuario == _usuarioCorrecto && contrasena == _contrasenaCorrecta;
  }
}

 
void main() {
  Login login = Login();

  String usuario = "Pablo";  
  String contrasena = "Pablo123";

  if (login.autenticar(usuario, contrasena)) {
    print("¡Inicio de sesión exitoso!");
  } else {
    print("Usuario o contraseña incorrectos.");
  }
} 
  