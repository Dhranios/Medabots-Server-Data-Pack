# Un-set charging
scoreboard players set @s[scores={Medaforce=1},type=minecraft:player] Medaforce 0
scoreboard players set @s[scores={Medaforce=1,OverheatingMedal=10..},type=!minecraft:player] Medaforce 0
scoreboard players set @s[scores={Medaforce=1},tag=!medaforce_blocked,type=!minecraft:player] Medaforce 0

# Set charging
scoreboard players set @s[tag=!medaforce_blocked,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,move:"medaforce_charge"}}}]}] Medaforce 1
scoreboard players add @s[scores={Medaforce=1}] Charge 1

# Fully charged
execute if entity @s[scores={Charge=50}] run function medabots_server:medaparts/charged_medaforce

# Remove 1 medal for while charge each time
clear @s[scores={Medaforce=1}] minecraft:nether_star{medabots_server:{activated:1b,move:"medaforce_charge"}} 1

# Overheating charging
scoreboard players add @s[scores={Medaforce=1}] OverheatingMedal 2
scoreboard players remove @s[scores={OverheatingMedal=1..}] OverheatingMedal 1
title @s[scores={OverheatingMedal=10..}] title {"translate":"medabots_server:move.overheating","color":"red"}
effect give @s[scores={OverheatingMedal=16..},tag=!undead] minecraft:instant_damage 1 1 true
effect give @s[scores={OverheatingMedal=16..},tag=undead] minecraft:instant_health 1 1 true
scoreboard players reset @s[scores={OverheatingMedal=0}] OverheatingMedal