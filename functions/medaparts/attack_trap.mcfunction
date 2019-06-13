# Show particles
particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30

# Show particles at user
execute if entity @s[scores={Time=10}] run particle minecraft:dripping_water ~ ~1 ~ 0 0 0 10
execute if entity @s[scores={Time=10}] run particle minecraft:dripping_lava ~ ~1 ~ 0 0 0 10

# Set trap at user
tag @s[scores={Time=20}] add this_entity
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=10},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","this_trap"],Duration:6000}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=10},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap"],Duration:6000}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=10},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","this_trap","ally_team"],Duration:6000}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=10},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","ally_team"],Duration:6000}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=10},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","this_trap","enemy_team"],Duration:6000}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=10},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","enemy_team"],Duration:6000}
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","this_trap","strong"],Duration:6000}
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","strong"],Duration:6000}
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","this_trap","ally_team","strong"],Duration:6000}
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","ally_team","strong"],Duration:6000}
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","this_trap","enemy_team","strong"],Duration:6000}
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","this_trap","enemy_team","strong"],Duration:6000}
execute if entity @s[scores={Time=20}] run setblock -286 0 -52 minecraft:oak_sign{Text1:'{"selector":"@e[tag=this_entity"}'}
execute if entity @s[scores={Time=20}] run data modify entity @e[tag=this_trap,tag=shooting_trap,limit=1] CustomName set from block -286 0 -52 Text1
execute if entity @s[scores={Time=20}] run data modify entity @e[tag=this_trap,tag=melee_trap,limit=1] CustomName set from block -286 0 -52 Text1
execute if entity @s[scores={Time=20}] run setblock -286 0 -52 minecraft:bedrock
execute if entity @s[scores={Time=20}] run tag @e[tag=this_trap] remove this_trap
tag @s[scores={Time=20}] remove this_entity

# Give back the original medal
replaceitem entity @s[scores={Time=20}] hotbar.4 minecraft:nether_star{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:spider_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50

# Finish the move
scoreboard players set @s[scores={Time=20..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=0}] Time 0
scoreboard players set @s[scores={Time=0}] Charge 0

# Increase time by 1
scoreboard players add @s[scores={Medaforce=-7}] Time 1

# Give back the medal to alien user
replaceitem entity @s[tag=random_change,scores={Medaforce=0}] hotbar.4 minecraft:nether_star{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
tag @s[tag=random_change,scores={Medaforce=0}] remove random_change