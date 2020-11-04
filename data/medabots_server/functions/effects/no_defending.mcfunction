# Count down timer
scoreboard players remove @s NoDefendTime 1
tag @s add cannot_defend

# No defensive move
scoreboard players set @s[scores={DefenseTime=3..}] DefenseTime 2

# Remove timer
tag @s[scores={NoDefendTime=0}] remove cannot_defend
scoreboard players reset @s[scores={NoDefendTime=0}] NoDefendTime