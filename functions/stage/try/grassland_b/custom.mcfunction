execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:10}}}}] run function medabots_server:stage/create/grassland_b/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:10}}}}] run function medabots_server:stage/create/grassland_b/build
