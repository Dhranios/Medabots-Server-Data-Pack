execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:17}}}}] run function medabots_server:stage/create/ruins_in_b/custom
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:custom_stage",stage:17}}}}] run function medabots_server:stage/create/ruins_in_b/build
