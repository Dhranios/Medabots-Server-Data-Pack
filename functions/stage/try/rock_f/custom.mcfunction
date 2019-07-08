execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:60}}}}] run function medabots_server:stage/create/rock_f/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:60}}}}] run function medabots_server:stage/create/rock_f/build
