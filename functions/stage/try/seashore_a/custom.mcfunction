execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:4}}}}] run function medabots_server:stage/create/seashore_a/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:4}}}}] run function medabots_server:stage/create/seashore_a/build
