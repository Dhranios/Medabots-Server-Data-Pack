execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:12}}}}] run function medabots_server:stage/create/jungle_b/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:12}}}}] run function medabots_server:stage/create/jungle_b/build
