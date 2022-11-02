#!/bin/bash

cd PRUEBA
ls | tr -t '[:lower:][:upper:]' '[:upper:][:lower:]' | tr -d "Aa"
