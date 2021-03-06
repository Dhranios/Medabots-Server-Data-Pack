# Un-set charging
scoreboard players set @s[scores={Medaforce=1},type=minecraft:player] Medaforce 0
scoreboard players set @s[scores={Medaforce=1,OverheatingMedal=15..},type=!minecraft:player] Medaforce 0
scoreboard players set @s[scores={Medaforce=1},tag=blocked_medaforce,type=!minecraft:player] Medaforce 0

# Set charging
scoreboard players set @s[tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,move:"charge_medaforce"}}}]}] Medaforce 1
scoreboard players add @s[scores={Medaforce=1}] Charge 1

# Show particles
execute if entity @s[scores={Medaforce=1}] run particle minecraft:dust 0.5 0.5 0.9 1 ~ ~1 ~ 1 2 1 0 10

# Fully charged
execute if entity @s[scores={Charge=50,Medaforce=0..1}] run function medabots_server:items/medapart/charged_medaforce

# Remove 1 medal for while charge each time
clear @s[scores={Medaforce=1}] minecraft:gold_ingot{medabots_server:{activated:1b,move:"charge_medaforce"}} 1

# Overheating charging
scoreboard players add @s[scores={Medaforce=1}] OverheatingMedal 2
scoreboard players remove @s[scores={OverheatingMedal=1..}] OverheatingMedal 1
title @s[scores={OverheatingMedal=11..}] title {"translate":"medabots_server:move.overheating","color":"red"}
effect give @s[scores={OverheatingMedal=16..},type=!#medabots_server:undead] minecraft:instant_damage 1 1 true
effect give @s[scores={OverheatingMedal=16..},type=#medabots_server:undead] minecraft:instant_health 1 1 true
scoreboard players reset @s[scores={OverheatingMedal=0}] OverheatingMedal