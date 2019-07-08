execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:19}}}}] run function medabots_server:stage/create/park_a/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:19}}}}] run function medabots_server:stage/create/park_a/build
