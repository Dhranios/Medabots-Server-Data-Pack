execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:24}}}}] run function medabots_server:stage/create/jungle_c/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:24}}}}] run function medabots_server:stage/create/jungle_c/build
