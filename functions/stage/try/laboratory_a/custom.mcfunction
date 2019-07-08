execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:9}}}}] run function medabots_server:stage/create/laboratory_a/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:9}}}}] run function medabots_server:stage/create/laboratory_a/build
