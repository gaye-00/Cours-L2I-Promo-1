//Fonctionne ==> ISO C90
//Mais si on supprime le "-ansi" sa va passer en ISO C99
{
  "cmd": ["gcc", "-Wall", "-ansi", "-pedantic-errors", "$file_name", "-o", "${file_base_name}.exe", "&&", "start", "cmd", "/k" , "$file_base_name", "&&","exit","cmd ", "/b"], 
  "selector": "source.c",
  "working_dir": "${file_path}",
  "shell": true
}
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//Fonctionne ==> ISO C99
{
  "cmd": ["gcc", "-Wall", "-pedantic-errors", "$file_name", "-o", "${file_base_name}.exe", "&&", "start", "cmd", "/k" , "$file_base_name"], 
  "selector": "source.c",
  "working_dir": "${file_path}",
  "shell": true
}
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

//"-std=c99", 
//ccflags-y := -std=gnu99 ==> linux
//CFLAGS=-std=c99
//"-std=c99" ==> ca(le compilateur) marche si on l'insere apres le gcc


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
{
  "cmd": ["gcc", "-Wall", "-ansi", "-pedantic-errors", "$file_name", "-o", "${file_base_name}.exe", "&&", "start", "cmd", "/k" , "$file_base_name"],
  "selector": "source.c",
  "working_dir": "${file_path}",
  "shell": true
}
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//Couper dans le C_ISO_C90
 "-std=c99",
  "&&","exit","cmd ", "/b"
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//Ne fonctionne pas
{
"cmd" : ["gcc", "$file_name", "-o", "${file_base_name}.exe"],
"selector" : "source.c",
"shell":true,
"working_dir" : "$file_path"
}
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//Fonctionne mais affiche le resutlat en bas ==> ISO C99
{
    "cmd": ["gcc", "$file_name", "-o", "${file_base_name}.exe", "&&", "${file_base_name}.exe"],
    "file_regex": "^([^:]+):([0-9]+):",
    "selector": "source.c",
    "shell": true,
    "working_dir": "$file_path"
}
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//Fonctionne et affiche les erreurs dans le code source ==> ISO C90
{
    "cmd": ["gcc", "-Wall", "-ansi", "-pedantic-errors", "$file_name", "-o", "${file_base_name}.exe", "&&", "start", "cmd", "/k" , "$file_base_name",], 
    "file_regex": "^([^:]+):([0-9]+):",
    "selector": "source.c",
    "shell": true,
    "working_dir": "$file_path"
}
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//Ne fonctionne pas
{
"cmd": ["g++", "${file}", "-o","${file_path}/${file_base_name}"],
"file_regex": "^(..[^:]*):([0-9]+):?([0-9]+)?:?(.*)$",
"working_dir": "${file_path}",
"encoding":"cp936",
"selector": "source.c",
"variants":
[
    {
    "name": "Run",
    "cmd": ["cmd","/C","start","cmd","/c", "${file_path}/${file_base_name}.exe &pause"]
    }
]
}
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//Fonctionne dans un sens, mais si y'a des donnees en entres sa va pas marcher ==> ISO C90
{
    "cmd": ["gcc", "$file_name", "-o", "${file_base_name}.exe", "&&", "${file_base_name}.exe", "&&", "start", "cmd", "/k" , "$file_base_name"],
    "file_regex": "^([^:]+):([0-9]+):",
    "selector": "source.c",
    "shell": true,
    "working_dir": "$file_path"
}
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//