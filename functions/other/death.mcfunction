execute if entity @s[scores={Death=1..}] run playsound medabots_server:entity.medabot.death player @a ~ ~ ~ 0.7
execute if entity @s[scores={Death=1..}] run scoreboard players set @s Damage 0
execute if entity @s[scores={Death=1..}] run function medabots_server:medaparts/death_message

# Penalty for dying, losing all items you got in that stage
clear @s minecraft:lapis_lazuli{medabots_server:{stage_item:1b}}
clear @s minecraft:diamond{medabots_server:{stage_item:1b}}
clear @s minecraft:fishing_rod{medabots_server:{stage_item:1b}}
clear @s minecraft:diamond_pickaxe{medabots_server:{stage_item:1b}}