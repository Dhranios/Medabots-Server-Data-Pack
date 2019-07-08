execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:2}}}}] run function medabots_server:stage/create/rock_a/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:2}}}}] run function medabots_server:stage/create/rock_a/build
