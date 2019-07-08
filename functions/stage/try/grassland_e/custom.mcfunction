execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:52}}}}] run function medabots_server:stage/create/grassland_e/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:52}}}}] run function medabots_server:stage/create/grassland_e/build
