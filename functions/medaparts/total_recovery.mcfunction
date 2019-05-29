# Show particles
particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30

# Show particles at user
execute if entity @s[scores={Time=10}] run particle minecraft:heart ~ ~1.55 ~ 0 0 0 1
execute if entity @s[scores={Time=13}] run particle minecraft:heart ~ ~1.55 ~ 0 0 0 1
execute if entity @s[scores={Time=16}] run particle minecraft:heart ~ ~1.55 ~ 0 0 0 1

# Heal user
scoreboard players add @s[scores={Time=10}] HeadArmor 20
execute if score @s[scores={Time=10}] HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor

# Affect teammates
execute if entity @s[scores={Time=10},tag=ally_medabot] run scoreboard players add @a[distance=..16,tag=ally_medabot] HeadArmor 10
execute if entity @s[scores={Time=10},tag=ally_medabot] as @a[distance=..16,tag=ally_medabot] if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute if entity @s[scores={Time=10},tag=enemy_medabot] run scoreboard players add @e[distance=..16,tag=enemy_medabot] HeadArmor 10
execute if entity @s[scores={Time=10},tag=enemy_medabot] as @e[distance=..16,tag=enemy_medabot] if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor

# Give back the original medal
replaceitem entity @s[scores={Time=20}] hotbar.4 minecraft:nether_star{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:mermaid_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50

# Finish the move
scoreboard players set @s[scores={Time=20..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=0}] Time 0
scoreboard players set @s[scores={Time=0}] Charge 0

# Increase time by 1
scoreboard players add @s[scores={Medaforce=-4}] Time 1

# Give back the medal to alien user
replaceitem entity @s[tag=random_change,scores={Medaforce=0}] hotbar.4 minecraft:nether_star{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
tag @s[tag=random_change,scores={Medaforce=0}] remove random_change