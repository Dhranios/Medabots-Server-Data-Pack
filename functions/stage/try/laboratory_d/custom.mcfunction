execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:35}}}}] run function medabots_server:stage/create/laboratory_d/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:35}}}}] run function medabots_server:stage/create/laboratory_d/build
