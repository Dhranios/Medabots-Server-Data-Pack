# Set the closest entity to the killer
execute if entity @s[tag=!ally_medabot,tag=!enemy_medabot] run scoreboard players add @e[tag=!me,limit=1,sort=nearest,tag=this_robattle] Killer 1
execute if entity @s[tag=ally_medabot] run scoreboard players add @e[tag=!me,limit=1,sort=nearest,tag=this_robattle,tag=!ally_medabot] Killer 1
execute if entity @s[tag=enemy_medabot] run scoreboard players add @e[tag=!me,limit=1,sort=nearest,tag=this_robattle,tag=!enemy_medabot] Killer 1

# Try again
execute as @e[scores={Killer=1},limit=1,sort=nearest,tag=this_robattle] run function medabots_server:other/death_message/target

# Fail still? generic death message
execute if entity @s[tag=!had_death] run tellraw @a[tag=this_robattle] {"translate":"medabots_server:death.generic","with":[{"selector":"@s"}]}
tag @s add had_death