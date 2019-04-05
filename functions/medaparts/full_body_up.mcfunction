# Show particles
particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30

# Show particles at user
execute if entity @s[scores={Time=10}] run particle minecraft:portal ~ ~1.55 ~ 0 0 0 10

# Fully repair user
scoreboard players set @s[scores={Time=10,LegsArmor=..10}] LegsArmor 10
scoreboard players set @s[scores={Time=10,LeftArmArmor=..10}] LeftArmArmor 10
scoreboard players set @s[scores={Time=10,RightArmArmor=..10}] RightArmArmor 10
scoreboard players operation @s[scores={Time=10,MaxLegsArmor=..10}] LegsArmor = @s MaxLegsArmor
scoreboard players operation @s[scores={Time=10,MaxLeftArmArmor=..10}] LeftArmArmor = @s MaxLeftArmArmor
scoreboard players operation @s[scores={Time=10,MaxRightArmArmor=..10}] RightArmArmor = @s MaxRightArmArmor
scoreboard players operation @s[scores={Time=10}] HeadUses = @s MaxHeadUses

# Affect teammates
execute if entity @s[scores={Time=10},tag=ally_medabot] run scoreboard players set @a[scores={LegsArmor=..10},distance=..16,tag=ally_medabot] LegsArmor 10
execute if entity @s[scores={Time=10},tag=ally_medabot] run scoreboard players set @a[scores={LeftArmArmor=..10},distance=..16,tag=ally_medabot] LeftArmArmor 10
execute if entity @s[scores={Time=10},tag=ally_medabot] run scoreboard players set @a[scores={RightArmArmor=..10},distance=..16,tag=ally_medabot] RightArmArmor 10
execute if entity @s[scores={Time=10},tag=ally_medabot] as @a[scores={MaxLegsArmor=..10},distance=..16,tag=ally_medabot] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
execute if entity @s[scores={Time=10},tag=ally_medabot] as @a[scores={MaxLeftArmArmor=..10},distance=..16,tag=ally_medabot] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute if entity @s[scores={Time=10},tag=ally_medabot] as @a[scores={MaxRightArmArmor=..10},distance=..16,tag=ally_medabot] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute if entity @s[scores={Time=10},tag=ally_medabot] as @a[distance=..16,tag=ally_medabot] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute if entity @s[scores={Time=10},tag=enemy_medabot] run scoreboard players set @e[scores={LegsArmor=..10},distance=..16,tag=enemy_medabot] LegsArmor 10
execute if entity @s[scores={Time=10},tag=enemy_medabot] run scoreboard players set @e[scores={LeftArmArmor=..10},distance=..16,tag=enemy_medabot] LeftArmArmor 10
execute if entity @s[scores={Time=10},tag=enemy_medabot] run scoreboard players set @e[scores={RightArmArmor=..10},distance=..16,tag=enemy_medabot] RightArmArmor 10
execute if entity @s[scores={Time=10},tag=enemy_medabot] as @e[scores={MaxLegsArmor=..10},distance=..16,tag=enemy_medabot] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
execute if entity @s[scores={Time=10},tag=enemy_medabot] as @e[scores={MaxLeftArmArmor=..10},distance=..16,tag=enemy_medabot] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute if entity @s[scores={Time=10},tag=enemy_medabot] as @e[scores={MaxRightArmArmor=..10},distance=..16,tag=enemy_medabot] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute if entity @s[scores={Time=10},tag=enemy_medabot] as @e[distance=..16,tag=enemy_medabot] run scoreboard players operation @s HeadUses = @s MaxHeadUses

# Give back the original medal
replaceitem entity @s[scores={Time=20}] hotbar.4 minecraft:nether_star{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50

# Finish the move
scoreboard players set @s[scores={Time=20..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=0}] Time 0
scoreboard players set @s[scores={Time=0}] Charge 0

# Increase time by 1
scoreboard players add @s[scores={Medaforce=-6}] Time 1

# Give back the medal to alien user
replaceitem entity @s[tag=random_change,scores={Medaforce=0}] hotbar.4 minecraft:nether_star{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
tag @s[tag=random_change,scores={Medaforce=0}] remove random_change