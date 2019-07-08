execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:16}}}}] run function medabots_server:stage/create/ruins_out_b/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:16}}}}] run function medabots_server:stage/create/ruins_out_b/build
