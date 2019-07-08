execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:58}}}}] run function medabots_server:stage/create/ruins_out_e/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:58}}}}] run function medabots_server:stage/create/ruins_out_e/build
