execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:55}}}}] run function medabots_server:stage/create/seashore_e/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:55}}}}] run function medabots_server:stage/create/seashore_e/build
