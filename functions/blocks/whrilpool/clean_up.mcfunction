scoreboard players remove @s Time 1
execute if entity @s[scores={Time=0}] run function medabots_server:blocks/whrilpool/remove
execute if entity @s[scores={Time=1..}] positioned ~ ~-1 ~ run function medabots_server:blocks/whrilpool/clean_up