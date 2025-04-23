@echo off
Title Calculadora
cls
:Menu
Title Calculadora
cls
Echo.
Echo.
echo Hola! Estas en el menu principal.
echo.
echo.
echo 1. Sumar
Echo 2. Restar
Echo 3. Multiplicar
Echo 4. Dividir
Echo 5. Nada (Salir)
Echo.
echo.
Set /p Menup = Escribe el numero de la opción elegida (Sin punto):
if %menup%==1 goto sumar
if %menup%==2 goto restar
if %menup%==3 goto multiplicar
if %menup%==4 goto dividir
if %menup%==5 exit else goto error
:Error
echo.
echo Ups! Ha habido un error!
echo Has escrito %menup%. Debe escribir el numero que indica la opcion. Sin mas. Solo el numero.
echo Por ejemplo, si quiere sumar, escriba únicamente 1 y pulse intro.
echo Pulse una tecla para volver al menu.
pause > nul
goto Menu
:Sumar
Title Calculadura - Suma
cls
echo.
echo Escribe la primera cifra a sumar
echo.
set /p sum1=
echo.
echo.
echo Escribe la segunda cifra a sumar
echo.
set /p sum2=
echo.
echo.
echo ----------------
echo.
set /a ress=%sum1% + %sum2%
echo %ress%
echo.
echo.
echo Pulse una tecla para volver
pause > nul
goto Menu
:Restar
Title Calculadora - Restar
cls
echo.
echo Escribe la primera cifra a restar
echo.
set /p res1=
echo.
echo.
echo Escribe la segunda cifra a restar
echo.
set /p res2=
echo.
echo.
echo ----------------
set /a resr=%res1%-%res2%
echo %res1% - %res2% = %resr%
echo.
echo.
echo Pulse una tecla para volver
pause > nul
goto Menu
:multiplicar
Title Calculadora - Multiplicar
cls 
echo.
echo Escribe la primera cifra a multiplicar
echo.
set /p mult1=
echo.
echo.
echo Escribe la segunda cifra a multiplicar
echo.
set /p mult2=
echo.
echo.
echo ----------------
echo.
set /a resm=%mult1%*%mult2%
echo %mult1% * %mult2% = %resm%
echo.
echo.
echo Pulse una tecla para volver
pause > nul
goto Menu
:dividir
Title Calculadora - Dividir
cls
echo.
echo Escribe la primera cifra a dividir
echo.
set /p div1=
echo.
echo.
echo Escribe la segunda cifra a dividir
echo.
echo Escribe la segunda cifra a dividir
echo.
set /p div2=
echo.
echo %div1% / %div2% = %resd%
echo.
echo.
echo Pulse una tecla para volver
pause > nul
goto Menu

