summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model","model_piece","new"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model","model_piece","new"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model","model_piece","new"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model","model_piece","new"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
scoreboard players operation @s MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @s MedabotNr 1
execute at @s as @e[tag=medabot_model,tag=new] run scoreboard players operation @s MedabotNr = @a[distance=..0.1,limit=1] MedabotNr
execute at @s as @e[tag=legs,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[0]
execute at @s as @e[tag=left_arm,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[1]
execute at @s as @e[tag=right_arm,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[2]
execute at @s as @e[tag=head,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[3]
execute if entity @s[tag=male_tinpet] run tag @e[tag=medabot_model,tag=new] add male_tinpet
execute if entity @s[tag=female_tinpet] run tag @e[tag=medabot_model,tag=new] add female_tinpet
execute if entity @s[tag=neutral_tinpet] run tag @e[tag=medabot_model,tag=new] add neutral_tinpet
tag @e[tag=medabot_model,tag=new] remove new