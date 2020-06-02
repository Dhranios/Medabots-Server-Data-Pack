scoreboard players set @s[tag=!blocked_medaforce,nbt={Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,move:"charge_medaforce"}}}]}] Medaforce 1
scoreboard players add @s[scores={Medaforce=1}] Charge 1

execute if entity @s[scores={Charge=50,Medaforce=0..1}] run function medabots_server:items/medapart/charged_medaforce

clear @s[scores={Medaforce=1}] minecraft:gold_ingot{medabots_server:{activated:1b,move:"charge_medaforce"}} 1

tag @s add hurt