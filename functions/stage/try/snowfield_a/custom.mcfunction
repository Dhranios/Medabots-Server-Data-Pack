execute if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage",stage:5}}}]}] run function medabots_server:stage/create/snowfield_a/build
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage",stage:5}}}]}] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/create/snowfield_a/custom
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage",stage:5}}}]}] unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.tinpet.not_valid"}