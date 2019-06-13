# Show particles
particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30

# Give the weapon to user
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Time=10..12,Drop=0}] hotbar.4 minecraft:snowball{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.throw"}']},medabots_server:{id:"medabots_server:spiral_bolt"}}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=10},type=!minecraft:player] anchored eyes run summon minecraft:snowball ^ ^ ^1 {CustomName:'{"translate":"medabots_server:move.kuwagata"}',Tags:["spiral_bolt","cpu_owned","enemy_team"],NoGravity:1b}
replaceitem entity @s[scores={Time=10..12,Drop=0,ScoutTime=1..}] hotbar.4 minecraft:snowball{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.throw"}']},medabots_server:{id:"medabots_server:spiral_bolt",strong:1b}}
execute if entity @s[scores={Time=10,ScoutTime=1..},type=!minecraft:player] anchored eyes run summon minecraft:snowball ^ ^ ^1 {CustomName:'{"translate":"medabots_server:move.kuwagata"}',Tags:["spiral_bolt","cpu_owned","enemy_team","strong"],NoGravity:1b}

# Remove the weapon from user
clear @s[scores={Time=50..}] minecraft:snowball{medabots_server:{id:"medabots_server:spiral_bolt"}}

# Give back the original medal
replaceitem entity @s[scores={Time=50..}] hotbar.4 minecraft:nether_star{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50

# Finish the move
scoreboard players set @s[scores={Time=50..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=0}] Time 0
scoreboard players set @s[scores={Time=0}] Charge 0

# Increase time by 1
scoreboard players add @s[scores={Medaforce=-2}] Time 1

# Give back the medal to alien user
replaceitem entity @s[tag=random_change,scores={Medaforce=0}] hotbar.4 minecraft:nether_star{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
tag @s[tag=random_change,scores={Medaforce=0}] remove random_change

# Name the attack
#execute as run data; MC-121807
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=10..},tag=!ally_medabot,tag=!enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!spiral_bolt] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.kuwagata"}',Tags:["spiral_bolt"]}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=10..},tag=ally_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!spiral_bolt] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.kuwagata"}',Tags:["spiral_bolt","ally_team"]}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=10..},tag=enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!spiral_bolt] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.kuwagata"}',Tags:["spiral_bolt","enemy_team"]}
execute if entity @s[scores={Time=10..,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!spiral_bolt] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.kuwagata"}',Tags:["spiral_bolt","strong"]}
execute if entity @s[scores={Time=10..,ScoutTime=1..},tag=ally_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!spiral_bolt] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.kuwagata"}',Tags:["spiral_bolt","ally_team","strong"]}
execute if entity @s[scores={Time=10..,ScoutTime=1..},tag=enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!spiral_bolt] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.kuwagata"}',Tags:["spiral_bolt","enemy_team","strong"]}