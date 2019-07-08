execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:14}}}}] run function medabots_server:stage/create/snowfield_b/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:14}}}}] run function medabots_server:stage/create/snowfield_b/build
