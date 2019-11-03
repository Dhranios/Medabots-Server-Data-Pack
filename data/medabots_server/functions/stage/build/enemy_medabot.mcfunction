tag @s remove allowed
execute if entity @e[distance=..0.7,tag=door] if entity @e[distance=..0.7,tag=mission] unless entity @e[distance=..0.7,tag=enemy_medabot] run tag @s add allowed
tag @s[tag=!allowed] add failed

execute if entity @s[tag=!failed] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet"}}}]}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.medabot.none_selected","color":"red"}
execute if entity @s[tag=!failed] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet"}}}]}] run tag @s add failed

execute if entity @s[tag=!failed] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.medabot.invalid","color":"red"}
execute if entity @s[tag=!failed] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add failed

execute if entity @s[tag=!failed] run summon minecraft:armor_stand ~ ~ ~ {"Tags":["no_ticking","enemy_medabot"],Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.enemy_medabot"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b}]}
execute if entity @s[tag=!failed] run data modify entity @e[distance=..0.7,tag=enemy_medabot,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:-106b}]
execute if entity @s[tag=!failed] run data modify entity @e[distance=..0.7,tag=enemy_medabot,limit=1] ArmorItems[3].tag.medabots_server merge value {cpu_data:{team:"enemy",practice_battle:1b}}
execute if entity @s[tag=!failed] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.medabot.placed","color":"green"}

tag @s remove failed