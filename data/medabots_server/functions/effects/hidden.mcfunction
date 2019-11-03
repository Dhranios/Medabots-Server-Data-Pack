# Count down timer
scoreboard players remove @s HideTime 1

# Turn invisible
execute if entity @s[scores={HideTime=2..}] as @e[tag=medabot_model,nbt={ArmorItems:[{id:"minecraft:fishing_rod"}]}] if score @s MedabotNr = @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run data modify entity @s ArmorItems[3].id set value "minecraft:stone_button"
execute if entity @s[scores={HideTime=2..}] as @e[tag=medabot_model,nbt={ArmorItems:[{id:"minecraft:carrot_on_a_stick"}]}] if score @s MedabotNr = @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run data modify entity @s ArmorItems[3].id set value "minecraft:oak_button"
execute if entity @s[scores={HideTime=..1}] as @e[tag=medabot_model,nbt={ArmorItems:[{id:"minecraft:stone_button"}]}] if score @s MedabotNr = @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run data modify entity @s ArmorItems[3].id set value "minecraft:fishing_rod"
execute if entity @s[scores={HideTime=..1}] as @e[tag=medabot_model,nbt={ArmorItems:[{id:"minecraft:oak_button"}]}] if score @s MedabotNr = @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run data modify entity @s ArmorItems[3].id set value "minecraft:carrot_on_a_stick"

# Remove timer
scoreboard players reset @s[scores={HideTime=0}] HideTime