execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:26}}}}] run function medabots_server:stage/create/iceberg_c/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:26}}}}] run function medabots_server:stage/create/iceberg_c/build
