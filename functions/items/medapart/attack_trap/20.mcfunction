# Set trap at user
tag @s add this_entity
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","this_trap"],Duration:6000}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap"],Duration:6000}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","this_trap","ally_team"],Duration:6000}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","ally_team"],Duration:6000}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","this_trap","enemy_team"],Duration:6000}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","enemy_team"],Duration:6000}
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","this_trap","strong"],Duration:6000}
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","strong"],Duration:6000}
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","this_trap","ally_team","strong"],Duration:6000}
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","ally_team","strong"],Duration:6000}
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","this_trap","enemy_team","strong"],Duration:6000}
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","enemy_team","strong"],Duration:6000}
setblock -286 0 -52 minecraft:oak_sign{Text1:'{"selector":"@e[tag=this_entity]"}'}
data modify entity @e[tag=this_trap,tag=shooting_trap,limit=1] CustomName set from block -286 0 -52 Text1
data modify entity @e[tag=this_trap,tag=melee_trap,limit=1] CustomName set from block -286 0 -52 Text1
setblock -286 0 -52 minecraft:bedrock
tag @e[tag=this_trap] remove this_trap
tag @s remove this_entity