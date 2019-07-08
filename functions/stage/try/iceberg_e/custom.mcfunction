execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:57}}}}] run function medabots_server:stage/create/iceberg_e/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:57}}}}] run function medabots_server:stage/create/iceberg_e/build
