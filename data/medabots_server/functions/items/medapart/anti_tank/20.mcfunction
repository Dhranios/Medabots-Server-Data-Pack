# Show particle
particle minecraft:dust 0.5 0.5 0.5 1 ~ ~ ~ 0 0 0 10

# Set the trap
tag @s add this_entity
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.anti_tank"}',Tags:["anti_tank","this_trap","trap"],Duration:1200}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.anti_tank"}',Tags:["anti_tank","this_trap","trap","ally_team"],Duration:1200}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.anti_tank"}',Tags:["anti_tank","this_trap","trap","enemy_team"],Duration:1200}
execute if entity @s[scores={ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.anti_tank"}',Tags:["anti_tank","this_trap","trap","strong"],Duration:1200}
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.anti_tank"}',Tags:["anti_tank","trap","this_trap","ally_team","strong"],Duration:1200}
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.anti_tank"}',Tags:["anti_tank","trap","this_trap","enemy_team","strong"],Duration:1200}
setblock -286 0 -52 minecraft:oak_sign{Text1:'{"selector":"@e[tag=this_entity]"}'}
data modify entity @e[tag=this_trap,limit=1] CustomName set from block -286 0 -52 Text1
setblock -286 0 -52 minecraft:bedrock
tag @e[tag=this_trap] remove this_trap
tag @s remove this_entity

# Remove from head uses if this was the head part
execute unless entity @s[gamemode=creative] run scoreboard players remove @s[tag=head_activated] HeadUses 1