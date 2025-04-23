



main(){
    Vehiculo coche = Vehiculo();
    Vehiculo coche2 = Vehiculo();
    Vehiculo coche3 = Vehiculo();
    Vehiculo coche4 = Vehiculo();
    Vehiculo coche5 = Vehiculo();
    coche.imprimirVehiculosCreados();

}

class Vehiculo {
    String? marca;
    int? plazas;
    bool siniestro = false;
    static int vehiculosCreados = 0;

Vehiculo(){
        vehiculosCreados++;
}

abstract imprimirVehiculosCreados(){
    print("El número de vehículos creados es: $vehiculosCreados" );
}
}