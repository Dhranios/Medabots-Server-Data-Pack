function medabots_server:blocks/put_block_back
scoreboard players remove @s WallLength 1
execute if entity @s[tag=x,scores={WallLength=1..}] positioned ~1 ~ ~ run function medabots_server:blocks/bridge/clean_up
execute if entity @s[tag=z,scores={WallLength=1..}] positioned ~ ~ ~1 run function medabots_server:blocks/bridge/clean_up