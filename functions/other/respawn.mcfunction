# Reset
scoreboard players set @s Death 0
tag @s remove enemy
tag @s remove story_battle
effect give @s minecraft:health_boost 1000000 19 true
effect give @s minecraft:instant_health 1 19 true

# Penalty for dying
clear @s minecraft:lapis_lazuli{medabots_server:{id:"medabots_server:medallar_cent"}}
experience add @s -1 levels

# play music
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1

# Try to keep your hopes up
tellraw @s {"translate":"medabots_server:message.defeat.1","color":"gold","extra":[{"text":"\n"},{"translate":"medabots_server:message.defeat.2"}]}