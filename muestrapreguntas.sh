#!/bin/bash

tiempo=0.5        #Está función es la del sleep que hay cuando entre pregunta y pregunta cuando sale si se ha contestado correctamente o no


function pregunta {
  clear




  respuestaCorrecta=`cat temaspreguntas/preg_$categoria.txt | head -$preguntaActual | tail -n+$preguntaActual | cut -d: -f3`    #Pone en variable la respuesta correcta
  posiblesRespuestas=`cat temaspreguntas/preg_$categoria.txt | head -$preguntaActual | tail -n+$preguntaActual | cut -d: -f4`   #Pone en la variable el numero de veces que debe repetirse el bucle para poder mostrar todas las respuestas
  echo "$categoria" | tr a-z A-Z | toilet -F border
  echo ""
  echo ""
  cat temaspreguntas/preg_$categoria.txt | head -$preguntaActual | tail -n+$preguntaActual | cut -d: -f2                   #Muestra la pregunta
  loop=0

  while [[ $loop -ne $posiblesRespuestas ]]; do                           #BUCLE para mostrarte las resapuestas una a una
    let loop=$loop+1
    cat temaspreguntas/resp_$categoria.txt | head -$preguntaActual | tail -n+$preguntaActual | cut -d: -f$loop
    sleep 0.2
  done

  echo ""
  read respuesta                                              #Detector acierto / fallo
  if [[ $respuesta -eq $respuestaCorrecta ]]; then
    echo "correcto"
    sleep $tiempo
  elif [[ $resapuesta -ne $respuestaCorrecta ]]; then
    rc=`cat temaspreguntas/resp_$categoria.txt  | head -$preguntaActual | tail -n+$preguntaActual | cut -d: -f$respuestaCorrecta`
    echo "fallo"
    echo -e "\nLa respuesta correcta es: $rc"
    sleep 1.8
  fi


  let preguntaActual=$preguntaActual+1                     #Sumar 1 a la pregunta actual para pasar a la siguiente
  if [[ $preguntaActual -lt $ultimaPregunta ]];            #Detecta si todavía no ha superado la última pregnta
  then
    pregunta                                               #Realiza la siguiente pregunta
  fi

  final                                                    #Para al final si ha llegado a la última pregunta
}


function puntos {
  clear

}















#HAY QUE IR ACABANDO LA FUNCION DEL RESULTADO SEGÚN LAS PREGUNTAS ACERTADAS Y EL TIEMPO

function final {
  clear
  ./animaciones/animacionVertical.sh titulos/finalpreguntas.txt
  sleep $tiempo
  exit

}



echo "$1" > /tmp/categoria.txt
categoria=`cat /tmp/categoria.txt`
preguntaActual=1
ultimaPregunta=`cat temaspreguntas/preg_$categoria.txt | tail -1 | cut -d: -f1`
pregunta
