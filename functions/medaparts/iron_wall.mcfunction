# Show particles
particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30

# Give the effect
execute unless entity @s[scores={ScoutTime=1..}] run scoreboard players set @s[scores={Time=10}] DefenseTime 600
scoreboard players set @s[scores={Time=10,ScoutTime=1..}] DefenseTime 900

# Affect teammates
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=10},tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] DefenseTime 600
execute unless entity @s[scores={ScoutTime=1..}] if entity @e[scores={Time=10},tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] DefenseTime 600
execute if entity @s[scores={Time=10,ScoutTime=1..},tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] DefenseTime 900
execute if entity @e[scores={Time=10,ScoutTime=1..},tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] DefenseTime 900

# Give back the original medal
replaceitem entity @s[scores={Time=20}] hotbar.4 minecraft:nether_star{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:knight_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50

# Finish the move
scoreboard players set @s[scores={Time=20..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=0}] Time 0
scoreboard players set @s[scores={Time=0}] Charge 0

# Increase time by 1
scoreboard players add @s[scores={Medaforce=-10}] Time 1

# Give back the medal to alien user
replaceitem entity @s[tag=random_change,scores={Medaforce=0}] hotbar.4 minecraft:nether_star{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
tag @s[tag=random_change,scores={Medaforce=0}] remove random_change