# Count down timer
scoreboard players remove @s NoDefendTime 1

# No defensive move
scoreboard players set @s[scores={DefenseTime=3..}] DefenseTime 2

# Remove timer
scoreboard players reset @s[scores={NoDefendTime=0}] NoDefendTime