#!/bin/bash

function pregunta {
  let preguntaActual=$preguntaActual+1
  clear
  respuestaCorrecta=`cat temaspreguntas/preg_$categoria.txt | head -$preguntaActual | tail -n+$preguntaActual | cut -d: -f3`    #Pone en variable la respuesta correcta
  posiblesRespuestas=`cat temaspreguntas/preg_$categoria.txt | head -$preguntaActual | tail -n+$preguntaActual | cut -d: -f4`   #Pone en la variable el numero de veces que debe repetirse el bucle para poder mostrar todas las respuestas
  cat temaspreguntas/preg_$categoria.txt | head -$preguntaActual | tail -n+$preguntaActual | cut -d: -f2                        #Muestra la pregunta
  loop=0

  while [[ $loop -eq $posiblesRespuestas ]]; do

    cat temaspreguntas/resp_$categoria.txt |
  done

  read
}








echo "informatica" > /tmp/categoria.txt
categoria=`cat /tmp/categoria.txt`
preguntaActual=0
pregunta
