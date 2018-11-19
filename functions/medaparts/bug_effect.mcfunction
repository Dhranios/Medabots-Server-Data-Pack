# Count down timer
scoreboard players remove @s BugTime 1

# Count up mover
scoreboard players add @s[scores={BugTime=1..}] BugTimer 1

# move vision dpending on the mover timer
teleport @s[scores={BugTimer=24}] ~ ~ ~ ~ ~-40
teleport @s[scores={BugTimer=48}] ~ ~ ~ ~60 ~
teleport @s[scores={BugTimer=72}] ~ ~ ~ ~ ~40
teleport @s[scores={BugTimer=96}] ~ ~ ~ ~-60 ~
scoreboard players set @s[scores={BugTimer=96}] BugTimer 0

# Remove timers
scoreboard players reset @s[scores={BugTime=0}] BugTimer
scoreboard players reset @s[scores={BugTime=0}] BugTime