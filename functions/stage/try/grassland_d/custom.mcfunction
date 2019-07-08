execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:30}}}}] run function medabots_server:stage/create/grassland_d/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:30}}}}] run function medabots_server:stage/create/grassland_d/build
