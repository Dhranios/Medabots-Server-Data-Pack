execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:23}}}}] run function medabots_server:stage/create/grassland_c/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:23}}}}] run function medabots_server:stage/create/grassland_c/build
