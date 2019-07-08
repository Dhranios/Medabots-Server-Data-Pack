execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:15}}}}] run function medabots_server:stage/create/iceberg_b/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:15}}}}] run function medabots_server:stage/create/iceberg_b/build
