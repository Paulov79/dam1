




































































static registroCliente(){
  Cliente cliente = Cliente();
  stdout.writeln("Introduce la razón social");
  cliente.razonsocial = stdin.readLineSync() ?? 'error';
  stdout.writeln("Introduce el NIF");
  cliente.nif = stdin.readLineSync() ?? 'error';
  stdout.writeln("Introduce la dirección");
  cliente.direccion = stdin.readLineSync() ?? 'error';
  stdout.writeln("Introduce el teléfono");
  cliente.telefono = stdin.readLineSync() ?? 'error';
  stdout.writeln("Introduce el email");
  cliente.email = stdin.readLineSync() ?? 'error';
  stdout.writeln("Introduce el riesgo social");
  cliente.riesgosocial = stdin.readLineSync() ?? 'error';
  if (await cliente.save()){
    stdout.writeln("Cliente registrado correctamente");
  } else {
    stdout.writeln("NO se ha registrado el cliente");
  }
} 


static ListarClientes() async{
  List<Cliente> listadoClientes = await Cliente().all();
  for(Cliente cliente in listadoClientes){
    stdout.writeln("${cliente.idcliente} - ${cliente.razonsocial} - ${cliente.nif} - ${cliente.direccion}  - ${cliente.telefono} - ${cliente.email} - ${cliente.riesgosocial}")
  }
} 


static acceso(){
  if
}