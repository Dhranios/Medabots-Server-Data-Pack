execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:13}}}}] run function medabots_server:stage/create/seashore_b/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:13}}}}] run function medabots_server:stage/create/seashore_b/build
