execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/create/park_battle/walls_initialization
execute if entity @s[tag=vs_cpus] run tellraw @s {"text":"Sorry, but versus computer enemies is not supported for non-story battle versions of this stage yet."}