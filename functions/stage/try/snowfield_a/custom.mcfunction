execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:5}}}}] run function medabots_server:stage/create/snowfield_a/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:5}}}}] run function medabots_server:stage/create/snowfield_a/build
