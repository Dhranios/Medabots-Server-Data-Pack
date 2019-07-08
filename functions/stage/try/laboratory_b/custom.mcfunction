execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:18}}}}] run function medabots_server:stage/create/laboratory_b/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:18}}}}] run function medabots_server:stage/create/laboratory_b/build
