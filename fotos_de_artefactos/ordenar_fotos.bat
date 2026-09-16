@echo off
setlocal enabledelayedexpansion

:: Paso 1: Cambiar todas las extensiones .jpeg a .jpg por si acaso
for %%f in (*.jpeg) do (
    ren "%%f" "%%~nf.jpg"
)

:: Paso 2: Renombrar y enumerar todas las imágenes .jpg desde el 1
set /a count=1
for %%f in (*.jpg) do (
    ren "%%f" "foto_!count!.jpg"
    set /a count+=1
)

echo ¡Listo! Todas las fotos han sido enumeradas desde el 1.
pause