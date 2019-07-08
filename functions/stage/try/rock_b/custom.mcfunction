execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:11}}}}] run function medabots_server:stage/create/rock_b/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:11}}}}] run function medabots_server:stage/create/rock_b/build
