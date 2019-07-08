execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:33}}}}] run function medabots_server:stage/create/iceberg_d/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:33}}}}] run function medabots_server:stage/create/iceberg_d/build
