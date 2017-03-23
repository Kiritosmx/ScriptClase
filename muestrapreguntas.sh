#!/bin/bash

function pregunta {
  clear




  respuestaCorrecta=`cat temaspreguntas/preg_$categoria.txt | head -$preguntaActual | tail -n+$preguntaActual | cut -d: -f3`    #Pone en variable la respuesta correcta
  posiblesRespuestas=`cat temaspreguntas/preg_$categoria.txt | head -$preguntaActual | tail -n+$preguntaActual | cut -d: -f4`   #Pone en la variable el numero de veces que debe repetirse el bucle para poder mostrar todas las respuestas
  cat temaspreguntas/preg_$categoria.txt | head -$preguntaActual | tail -n+$preguntaActual | cut -d: -f2                   #Muestra la pregunta
  echo ""
  loop=0


  while [[ $loop -ne $posiblesRespuestas ]]; do                           #BUCLE para mostrarte las resapuestas una a una
    let loop=$loop+1
    cat temaspreguntas/resp_$categoria.txt | head -$preguntaActual | tail -n+$preguntaActual | cut -d: -f$loop
    sleep 0.2
  done

  echo ""

  read respuesta
  if [[ $respuesta -eq $respuestaCorrecta ]]; then
    echo "correcto"
    read
  elif [[ $resapuesta -ne $respuestaCorrecta ]]; then
    echo "fallo"
    read
  fi


  let preguntaActual=$preguntaActual+1
  if [[ $preguntaActual -lt $ultimaPregunta ]];
  then
    pregunta
  fi

  final
}

function final {
  clear
  echo "fin"
  read
  exit
}






echo "$1" > /tmp/categoria.txt
categoria=`cat /tmp/categoria.txt`
preguntaActual=1
ultimaPregunta=`cat temaspreguntas/preg_informatica.txt | tail -1 | cut -d: -f1`
pregunta
