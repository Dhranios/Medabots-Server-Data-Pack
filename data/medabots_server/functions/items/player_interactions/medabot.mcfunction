execute if entity @s[tag=!has_medabot_form] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tellraw @s {"translate":"medabots_server:message.tinpet.not_valid"}
execute if entity @s[scores={EditingTinpet=0..},tag=!has_medabot_form,nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run function medabots_server:items/player_interactions/medabot/assume_form

execute if entity @s[tag=has_medabot_form,scores={PlayerInteract=7}] run function medabots_server:items/player_interactions/medabot/revert

scoreboard players set @s PlayerInteract 0