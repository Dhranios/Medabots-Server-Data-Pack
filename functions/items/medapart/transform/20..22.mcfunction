# Transform
loot replace entity @s[scores={Transform=1,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:male_tinpet",activated:1b}}}]}] hotbar.1 loot medabots_server:gameplay/transform/left_arm/male_tinpet
loot replace entity @s[scores={Transform=3,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:male_tinpet",activated:1b}}}]}] hotbar.2 loot medabots_server:gameplay/transform/right_arm/male_tinpet
loot replace entity @s[scores={Transform=2,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:male_tinpet",activated:1b}}}]}] hotbar.3 loot medabots_server:gameplay/transform/head/male_tinpet
loot replace entity @s[scores={Transform=1,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:female_tinpet",activated:1b}}}]}] hotbar.1 loot medabots_server:gameplay/transform/left_arm/female_tinpet
loot replace entity @s[scores={Transform=3,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:female_tinpet",activated:1b}}}]}] hotbar.2 loot medabots_server:gameplay/transform/right_arm/female_tinpet
loot replace entity @s[scores={Transform=2,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:female_tinpet",activated:1b}}}]}] hotbar.3 loot medabots_server:gameplay/transform/head/female_tinpet
loot replace entity @s[scores={Transform=1,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:neutral_tinpet",activated:1b}}}]}] hotbar.1 loot medabots_server:gameplay/transform/left_arm/neutral_tinpet
loot replace entity @s[scores={Transform=3,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:neutral_tinpet",activated:1b}}}]}] hotbar.2 loot medabots_server:gameplay/transform/right_arm/neutral_tinpet
loot replace entity @s[scores={Transform=2,Drop=0},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:neutral_tinpet",activated:1b}}}]}] hotbar.3 loot medabots_server:gameplay/transform/head/neutral_tinpet

# Update model
execute if entity @s[scores={Drop=0}] store result score #temp MedabotNr run scoreboard players get @s MedabotNr
execute if entity @s[scores={Drop=0}] as @e[scores={MedabotNr=0..},tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run tag @s add this_model
execute if entity @s[scores={Transform=1,Drop=0}] as @e[tag=left_arm,tag=this_model] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[1]
execute if entity @s[scores={Transform=3,Drop=0}] as @e[tag=right_arm,tag=this_model] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[2]
execute if entity @s[scores={Transform=2,Drop=0}] as @e[tag=head,tag=this_model] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[3]
scoreboard players reset #temp MedabotNr
tag @e[tag=this_model] remove this_model