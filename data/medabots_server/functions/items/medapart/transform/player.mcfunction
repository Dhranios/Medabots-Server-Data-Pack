clear @s[tag=right_arm_activated] minecraft:fishing_rod{medabots_server:{part:"right_arm",activated:1b}}
clear @s[tag=left_arm_activated] minecraft:fishing_rod{medabots_server:{part:"left_arm",activated:1b}}
clear @s[tag=head_activated] minecraft:fishing_rod{medabots_server:{part:"head",activated:1b}}

# Transform timer
scoreboard players set @s[tag=left_arm_activated] TransformLTime 2400
scoreboard players set @s[tag=right_arm_activated] TransformRTime 2400
scoreboard players set @s[tag=head_activated] TransformHTime 2400

# Transform
loot replace entity @s[tag=left_arm_activated,tag=male_tinpet] hotbar.1 loot medabots_server:gameplay/transform/left_arm/male_tinpet
loot replace entity @s[tag=right_arm_activated,tag=male_tinpet] hotbar.2 loot medabots_server:gameplay/transform/right_arm/male_tinpet
loot replace entity @s[tag=head_activated,tag=male_tinpet] hotbar.3 loot medabots_server:gameplay/transform/head/male_tinpet
loot replace entity @s[tag=left_arm_activated,tag=female_tinpet] hotbar.1 loot medabots_server:gameplay/transform/left_arm/female_tinpet
loot replace entity @s[tag=right_arm_activated,tag=female_tinpet] hotbar.2 loot medabots_server:gameplay/transform/right_arm/female_tinpet
loot replace entity @s[tag=head_activated,tag=female_tinpet] hotbar.3 loot medabots_server:gameplay/transform/head/female_tinpet
loot replace entity @s[tag=left_arm_activated,tag=neutral_tinpet] hotbar.1 loot medabots_server:gameplay/transform/left_arm/neutral_tinpet
loot replace entity @s[tag=right_arm_activated,tag=neutral_tinpet] hotbar.2 loot medabots_server:gameplay/transform/right_arm/neutral_tinpet
loot replace entity @s[tag=head_activated,tag=neutral_tinpet] hotbar.3 loot medabots_server:gameplay/transform/head/neutral_tinpet

# Update model
execute if entity @s[scores={Drop=0}] store result score #temp MedabotNr run scoreboard players get @s MedabotNr
execute if entity @s[scores={Drop=0}] as @e[scores={MedabotNr=0..},tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run tag @s add this_model
execute if entity @s[tag=left_arm_activated] run kill @e[tag=left_arm,tag=this_model]
execute if entity @s[tag=right_arm_activated] run kill @e[tag=right_arm,tag=this_model]
execute if entity @s[tag=head_activated] run kill @e[tag=head,tag=this_model]
execute if entity @s[tag=head_activated] run kill @e[tag=chest,tag=this_model]
execute if entity @s[tag=left_arm_activated] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model","model_piece","new","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
execute if entity @s[tag=right_arm_activated] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model","model_piece","new","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
execute if entity @s[tag=head_activated] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model","model_piece","new","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
execute if entity @s[nbt={Inventory:[{Slot:16b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @e[tag=medabot_model,tag=new] add male_tinpet
execute if entity @s[nbt={Inventory:[{Slot:16b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] run tag @e[tag=medabot_model,tag=new] add female_tinpet
execute if entity @s[nbt={Inventory:[{Slot:16b,tag:{medabots_server:{id:"medabots_server:neutral_tinpet"}}}]}] run tag @e[tag=medabot_model,tag=new] add neutral_tinpet
execute at @s as @e[tag=medabot_model,tag=new] run scoreboard players operation @s MedabotNr = @a[distance=..0.1,limit=1] MedabotNr
execute if entity @s[tag=left_arm_activated] as @e[tag=left_arm,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[1]
execute if entity @s[tag=right_arm_activated] as @e[tag=right_arm,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[2]
execute if entity @s[tag=head_activated] as @e[tag=head,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[3]
tag @e[tag=medabot_model,tag=new] remove new
scoreboard players reset #temp MedabotNr
tag @e[tag=this_model] remove this_model