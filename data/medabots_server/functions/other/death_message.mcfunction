execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=hostile,tag=killerable] if score @s Stage = #temp Stage run tag @s add this_robattle
tag @s add me

# Send death message depending on the death
execute if entity @s[tag=!had_death] if block ~ ~ ~ minecraft:lava run function medabots_server:other/death/lava
execute if entity @s[tag=!had_death,scores={OverheatingMedal=16..}] run function medabots_server:other/death/overheating
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1,sort=nearest,tag=this_robattle] run function medabots_server:other/death_message/target

# no message? try again
execute if entity @s[tag=!had_death] run function medabots_server:other/death_message/retry
execute if entity @s[type=minecraft:player] run tag @a[scores={Killer=1}] add killed_player
tag @s remove me
scoreboard players reset #temp Stage
tag @e[tag=this_robattle] remove this_robattle