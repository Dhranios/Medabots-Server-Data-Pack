execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:28}}}}] run function medabots_server:stage/create/laboratory_c/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:28}}}}] run function medabots_server:stage/create/laboratory_c/build
