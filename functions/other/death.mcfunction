playsound medabots_server:entity.medabot.death player @a ~ ~ ~ 0.7
scoreboard players set @s Damage 0
function medabots_server:medaparts/death_message

# Penalty for dying, losing all items you got in that stage
clear @s minecraft:lapis_lazuli{medabots_server:{stage_item:1b}}
clear @s minecraft:diamond{medabots_server:{stage_item:1b}}
clear @s minecraft:fishing_rod{medabots_server:{stage_item:1b}}
clear @s minecraft:diamond_pickaxe{medabots_server:{stage_item:1b}}