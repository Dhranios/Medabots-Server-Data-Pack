# Count down timer
scoreboard players remove @s HideTime 1

# Spawn last known position
scoreboard players operation #temp MedabotNr = @s MedabotNr
execute if entity @s[tag=!was_hidden] as @e[type=minecraft:armor_stand] if score @s MedabotNr = #temp MedabotNr run tag @s add dead
execute if entity @s[tag=!was_hidden] run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.medabot"}',Tags:["last_known_location","life_time"],Invisible:1b,Marker:1b}
execute if entity @s[tag=!was_hidden] run scoreboard players operation @e[type=minecraft:armor_stand,distance=..0.7] MedabotNr = #temp MedabotNr
execute if entity @s[tag=!was_hidden,tag=enemy_medabot] run tag @e[type=minecraft:armor_stand,distance=..0.7] add enemy_medabot
execute if entity @s[tag=!was_hidden,tag=ally_medabot] run tag @e[type=minecraft:armor_stand,distance=..0.7] add ally_medabot
tag @s add was_hidden


# Turn invisible
execute if entity @s[scores={HideTime=2..}] as @e[tag=medabot_model,nbt={ArmorItems:[{id:"minecraft:fishing_rod"}]}] if score @s MedabotNr = #temp MedabotNr run data modify entity @s ArmorItems[3].id set value "minecraft:stone_button"
execute if entity @s[scores={HideTime=2..}] as @e[tag=medabot_model,nbt={ArmorItems:[{id:"minecraft:carrot_on_a_stick"}]}] if score @s MedabotNr = #temp MedabotNr run data modify entity @s ArmorItems[3].id set value "minecraft:oak_button"
execute if entity @s[scores={HideTime=..1}] as @e[tag=medabot_model,nbt={ArmorItems:[{id:"minecraft:stone_button"}]}] if score @s MedabotNr = #temp MedabotNr run data modify entity @s ArmorItems[3].id set value "minecraft:fishing_rod"
execute if entity @s[scores={HideTime=..1}] as @e[tag=medabot_model,nbt={ArmorItems:[{id:"minecraft:oak_button"}]}] if score @s MedabotNr = #temp MedabotNr run data modify entity @s ArmorItems[3].id set value "minecraft:carrot_on_a_stick"

# Remove timer
tag @s[scores={HideTime=0}] remove was_hidden
scoreboard players reset @s[scores={HideTime=0}] HideTime
tag @s[scores={Sound=1..}] remove was_hidden
scoreboard players reset #temp MedabotNr
