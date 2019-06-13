# Set which part is activated
scoreboard players set @s[scores={Time=20,Transform=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:flame_tisala_sala_arm"}}}]}] TransformLID 1
scoreboard players set @s[scores={Time=20,Transform=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:flame_tisala_sala_hand"}}}]}] TransformRID 1
scoreboard players set @s[scores={Time=20,Transform=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:flame_tisala_sala_head"}}}]}] TransformHID 1
scoreboard players set @s[scores={Time=20,Transform=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:potato_insect_changedress"}}}]}] TransformHID 2

# Transform
loot replace entity @s[scores={Transform=1,Time=20..22,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:male_tinpet",activated:1b}}}]}] hotbar.1 loot medabots_server:gameplay/transform/left_arm/male
loot replace entity @s[scores={Transform=3,Time=20..22,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:male_tinpet",activated:1b}}}]}] hotbar.2 loot medabots_server:gameplay/transform/right_arm/male
loot replace entity @s[scores={Transform=2,Time=20..22,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:male_tinpet",activated:1b}}}]}] hotbar.3 loot medabots_server:gameplay/transform/head/male
loot replace entity @s[scores={Transform=1,Time=20..22,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:female_tinpet",activated:1b}}}]}] hotbar.1 loot medabots_server:gameplay/transform/left_arm/female
loot replace entity @s[scores={Transform=3,Time=20..22,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:female_tinpet",activated:1b}}}]}] hotbar.2 loot medabots_server:gameplay/transform/right_arm/female
loot replace entity @s[scores={Transform=2,Time=20..22,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:female_tinpet",activated:1b}}}]}] hotbar.3 loot medabots_server:gameplay/transform/head/female
loot replace entity @s[scores={Transform=1,Time=20..22,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:neutral_tinpet",activated:1b}}}]}] hotbar.1 loot medabots_server:gameplay/transform/left_arm/neutral
loot replace entity @s[scores={Transform=3,Time=20..22,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:neutral_tinpet",activated:1b}}}]}] hotbar.2 loot medabots_server:gameplay/transform/right_arm/neutral
loot replace entity @s[scores={Transform=2,Time=20..22,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:neutral_tinpet",activated:1b}}}]}] hotbar.3 loot medabots_server:gameplay/transform/head/neutral
scoreboard players set @s[scores={Transform=1,Time=20}] TransformLTime 2400
scoreboard players set @s[scores={Transform=3,Time=20}] TransformRTime 2400
scoreboard players set @s[scores={Transform=2,Time=20}] TransformHTime 2400

# Update model
execute if entity @s[scores={Transform=1..,Time=20}] store result score #temp MedabotNr run scoreboard players get @s MedabotNr
execute if entity @s[scores={Transform=1..,Time=20}] as @e[scores={MedabotNr=0..},tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run tag @s add this_model
execute if entity @s[scores={Transform=1,Time=20}] as @e[tag=left_arm,tag=this_model] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[1]
execute if entity @s[scores={Transform=3,Time=20}] as @e[tag=right_arm,tag=this_model] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[2]
execute if entity @s[scores={Transform=2,Time=20}] as @e[tag=head,tag=this_model] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[3]
scoreboard players reset #temp MedabotNr
tag @e[tag=this_model] remove this_model

# Finish the move
scoreboard players reset @s[scores={Transform=1,Time=30..},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] Transform
scoreboard players reset @s[scores={Transform=3,Time=30..},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"right_arm"}}}]}] Transform
scoreboard players reset @s[scores={Transform=2,Time=30..},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"head"}}}]}] Transform
scoreboard players reset @s[scores={Transform=1..,Time=30..},type=!minecraft:player] Transform
execute unless entity @s[scores={Transform=1..}] run scoreboard players set @s Time 0

# Increase time by 1
scoreboard players add @s[scores={Transform=1..}] Time 1