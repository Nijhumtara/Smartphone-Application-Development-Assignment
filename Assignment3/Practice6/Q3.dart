import 'dart:io';

enum Gendar {male, female, other}

void main(){
  stdout.write("Gendars: ");
  for(var g in Gendar.values){
    stdout.write("$g ");
  }
}