execute if entity @s[tag=!ally_medabot,tag=!enemy_medabot] if block ~ ~-1 ~ minecraft:air positioned ~ ~-2 ~ if entity @e[distance=..0.7,tag=hostile,type=!minecraft:item,type=!minecraft:area_effect_cloud,tag=!minecraft:armor_stand,tag=!balloon_bomb,tag=!bomb,tag=!ice_block,tag=!round_stone,tag=!raft,tag=!pot] run function medabots_server:items/medapart/footstool/success
execute if entity @s[tag=ally_medabot] if block ~ ~-1 ~ minecraft:air positioned ~ ~-2 ~ if entity @e[distance=..0.7,tag=hostile,tag=!ally_medabot,type=!minecraft:item,type=!minecraft:area_effect_cloud,tag=!minecraft:armor_stand,tag=!balloon_bomb,tag=!bomb,tag=!ice_block,tag=!round_stone,tag=!raft,tag=!pot] run function medabots_server:items/medapart/footstool/success
execute if entity @s[tag=enemy_medabot] if block ~ ~-1 ~ minecraft:air positioned ~ ~-2 ~ if entity @e[distance=..0.7,tag=hostile,tag=!enemy_medabot,type=!minecraft:item,type=!minecraft:area_effect_cloud,tag=!minecraft:armor_stand,tag=!balloon_bomb,tag=!bomb,tag=!ice_block,tag=!round_stone,tag=!raft,tag=!pot] run function medabots_server:items/medapart/footstool/success