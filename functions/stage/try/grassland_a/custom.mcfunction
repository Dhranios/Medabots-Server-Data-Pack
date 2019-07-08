execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:1}}}}] run function medabots_server:stage/create/grassland_a/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:1}}}}] run function medabots_server:stage/create/grassland_a/build
