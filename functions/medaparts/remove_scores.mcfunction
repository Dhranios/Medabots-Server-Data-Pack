# Deactivate the legs
scoreboard players set @s[scores={Float=1..}] Float 0
scoreboard players set @s[scores={Fly=1..}] Fly 0
tag @s[tag=multi_legged] remove multi_legged
tag @s[tag=swim] remove swim
tag @s[tag=tank] remove tank
tag @s[tag=two_legged] remove two_legged
tag @s[tag=wheel] remove wheel

# Remove status effects
tag @s[tag=medaforce_blocked] remove medaforce_blocked
tag @s[tag=ineffective_left] remove ineffective_left
tag @s[tag=ineffective_right] remove ineffective_right
tag @s[tag=ineffective_head] remove ineffective_head
scoreboard players reset @s[scores={IneffectiveTime=1..}] IneffectiveTime
scoreboard players reset @s[scores={BugTimer=1..}] BugTimer
scoreboard players reset @s[scores={BugTime=1..}] BugTime