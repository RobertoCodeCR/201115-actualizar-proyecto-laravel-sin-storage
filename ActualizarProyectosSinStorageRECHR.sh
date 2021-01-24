#!/bin/bash
#Roberto Eulogio Chavez Ramos (RobertoCodeCR, RobertoIngECR, RECHR)
echo "PROGRAMA QUE ACTUALIZA CON UN PROYECTO SIN STORAGE"
echo "=================================================="
echo -n "Introduce ruta absoluta hacia proyecto original:"
read ruta_original
echo "Ruta Original: $ruta_original"

echo -n "Introduce ruta absoluta hacia nuevo proyecto:"
read ruta_nuevo
echo "Ruta Nuevo: $ruta_nuevo"

# Ejemplo:
# ruta_original="/var/www/html/proyecto"
# ruta_nuevo="/var/www/html/proyecto_201114_1352/proyecto"

echo "--------------------------------------------------"

#Eliminando directorio GIT de Proyecto Nuevo y mover el del Proyecto Original
ruta_carpeta="/.git"
if  [ -d "$ruta_nuevo$ruta_carpeta" ]; then
    rm -rf "$ruta_nuevo$ruta_carpeta"
    echo "Eliminado directorio.$ruta_carpeta de Nuevo Proyecto"
else
    echo "Nuevo Proyecto NO tiene directorio .$ruta_carpeta"
fi
echo ""
if  [ -d "$ruta_original$ruta_carpeta" ]; then
    mv "$ruta_original$ruta_carpeta" "$ruta_nuevo"
    echo "Movido directorio .$ruta_carpeta de Original a Nuevo"
else
    echo "Proyecto Original no tiene directorio .$ruta_carpeta"
fi
echo ""

#Eliminando archivo .gitignore de Proyecto Nuevo y mover el del Proyecto Original
ruta_archivo="/.gitignore"
if  [ -f "$ruta_nuevo$ruta_archivo" ]; then
    rm "$ruta_nuevo$ruta_archivo"
    echo "Eliminado archivo .$ruta_archivo de Nuevo Proyecto"
else
    echo "Nuevo Proyecto NO tiene archivo .$ruta_archivo"
fi
echo ""
if  [ -f "$ruta_original$ruta_archivo" ]; then
    mv "$ruta_original$ruta_archivo" "$ruta_nuevo"
    echo "Movido archivo .$ruta_archivo de Original a Nuevo"
else
    echo "Proyecto Original no tiene archivo .$ruta_archivo"
fi
echo ""

#Eliminando directorio storage/app de Proyecto Nuevo y mover el del Proyecto Original
ruta_carpeta="/storage/app"
if  [ -d "$ruta_nuevo$ruta_carpeta" ]; then
    rm -rf "$ruta_nuevo$ruta_carpeta"
    echo "Eliminado directorio.$ruta_carpeta de Nuevo Proyecto"
else
    echo "Nuevo Proyecto NO tiene directorio .$ruta_carpeta"
fi
echo ""
if  [ -d "$ruta_original$ruta_carpeta" ]; then
    mv "$ruta_original$ruta_carpeta" "$ruta_nuevo$ruta_carpeta"
    echo "Movido directorio .$ruta_carpeta de Original a Nuevo"
else
    echo "Proyecto Original no tiene directorio .$ruta_carpeta"
fi
echo ""

#Eliminando archivo .env de Proyecto Nuevo y mover el del Proyecto Original
ruta_archivo="/.env"
if  [ -f "$ruta_nuevo$ruta_archivo" ]; then
    rm "$ruta_nuevo$ruta_archivo"
    echo "Eliminado archivo .$ruta_archivo de Nuevo Proyecto"
else
    echo "Nuevo Proyecto NO tiene archivo .$ruta_archivo"
fi
echo ""
if  [ -f "$ruta_original$ruta_archivo" ]; then
    mv "$ruta_original$ruta_archivo" "$ruta_nuevo"
    echo "Movido archivo .$ruta_archivo de Original a Nuevo"
else
    echo "Proyecto Original no tiene archivo .$ruta_archivo"
fi
echo ""

#Eliminando directorio del Proyecto Original
if  [ -d "$ruta_original" ]; then
    rm -rf "$ruta_original"
    echo "Eliminado Proyecto Original en $ruta_original"
else
    echo "No existe el Proyecto Original en $ruta_original"
fi
echo ""

#Moviendo y Renombrando Proyecto Nuevo a Proyecto Original
if  [ -d "$ruta_nuevo" ]; then
    mv "$ruta_nuevo" "$ruta_original"
    echo "Movido y renombrado de $ruta_nuevo a $ruta_original"
else
    echo "Proyecto Nuevo no tiene directorio en $ruta_nuevo"
fi
echo ""
echo -n "Presiona cualquier tecla para terminar..."
read x
