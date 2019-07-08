execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:29}}}}] run function medabots_server:stage/create/boxer/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:29}}}}] run function medabots_server:stage/create/boxer/build
