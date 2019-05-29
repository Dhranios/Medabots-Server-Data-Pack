# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:dripping_lava ~ ~1 ~ 1 0 1 1 10

# Set the trap
tag @s[scores={Time=20}] add this_entity
execute if entity @s[scores={Time=20},tag=!ally_medabot,tag=!enemy_medabot] unless entity @s[scores={ScoutTime=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap"],Duration:1200}
execute if entity @s[scores={Time=20},tag=ally_medabot] unless entity @s[scores={ScoutTime=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","ally_team"],Duration:1200}
execute if entity @s[scores={Time=20},tag=enemy_medabot] unless entity @s[scores={ScoutTime=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","enemy_team"],Duration:1200}
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","strong"],Duration:1200}
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","ally_team","strong"],Duration:1200}
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","enemy_team","strong"],Duration:1200}
execute if entity @s[scores={Time=20}] run setblock 0 0 0 minecraft:oak_sign{Text1:'{"selector":"@e[tag=this_entity"}'}
execute if entity @s[scores={Time=20}] run data modify entity @e[tag=this_trap,limit=1] CustomName set from block 0 0 0 Text1
execute if entity @s[scores={Time=20}] run setblock 0 0 0 minecraft:bedrock
execute if entity @s[scores={Time=20}] run tag @e[tag=this_trap] remove this_trap
tag @s[scores={Time=20}] remove this_entity

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={ShootingTrap=2,Time=20}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=30..}] ShootingTrap
scoreboard players set @s[scores={Time=30..}] Time 0

# Increase time by 1
scoreboard players add @s[scores={ShootingTrap=1..}] Time 1