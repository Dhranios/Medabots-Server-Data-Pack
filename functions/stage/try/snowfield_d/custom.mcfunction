execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:32}}}}] run function medabots_server:stage/create/snowfield_d/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:32}}}}] run function medabots_server:stage/create/snowfield_d/build
