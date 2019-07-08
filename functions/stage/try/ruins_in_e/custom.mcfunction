execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:59}}}}] run function medabots_server:stage/create/ruins_in_e/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:59}}}}] run function medabots_server:stage/create/ruins_in_e/build
