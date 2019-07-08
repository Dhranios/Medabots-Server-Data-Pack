execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:8}}}}] run function medabots_server:stage/create/ruins_in_a/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:8}}}}] run function medabots_server:stage/create/ruins_in_a/build
