execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:53}}}}] run function medabots_server:stage/create/rock_e/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:53}}}}] run function medabots_server:stage/create/rock_e/build
