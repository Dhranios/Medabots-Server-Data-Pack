# Give a shield for 3 seconds
execute unless entity @s[scores={NoDefendTime=1..}] run effect give @s[tag=!tank_legs] minecraft:resistance 1 0 true
execute unless entity @s[scores={NoDefendTime=1..}] run effect give @s[tag=tank_legs] minecraft:resistance 1 1 true
scoreboard players remove @s[scores={DefenseTime=1..}] DefenseTime 1
scoreboard players reset @s[scores={DefenseTime=0}] DefenseTime