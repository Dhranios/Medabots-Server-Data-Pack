# Show particles
particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30

# Give weapon to user
replaceitem entity @s[scores={Time=10..12},tag=!ally_medabot,tag=!enemy_medabot] hotbar.4 minecraft:purple_wool{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.chameleon"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:damage_ball",team:"none"}}
replaceitem entity @s[scores={Time=10..12},tag=ally_medabot] hotbar.4 minecraft:purple_wool{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.chameleon"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:damage_ball",team:"ally"}}
replaceitem entity @s[scores={Time=10..12},tag=enemy_medabot] hotbar.4 minecraft:purple_wool{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.chameleon"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:damage_ball",team:"enemy"}}
execute if entity @s[scores={Time=10},type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^ ^2.5 {Item:{id:"minecraft:purple_wool",Count:1b,tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.chameleon"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:damage_ball",team:"enemy"}}}}

# Remove the weapon from user
clear @s[scores={Time=50}] minecraft:purple_wool{medabots_server:{id:"medabots_server:damage_ball"}}

# Give back the original medal
replaceitem entity @s[scores={Time=50}] hotbar.4 minecraft:nether_star{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:chameleon_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50

# Finish the move
scoreboard players set @s[scores={Time=50..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=0}] Time 0
scoreboard players set @s[scores={Time=0}] Charge 0

# Increase time by 1
scoreboard players add @s Time 1

# Give back the medal to alien user
replaceitem entity @s[tag=random_change,scores={Medaforce=0}] hotbar.4 minecraft:nether_star{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
tag @s[tag=random_change,scores={Medaforce=0}] remove random_change