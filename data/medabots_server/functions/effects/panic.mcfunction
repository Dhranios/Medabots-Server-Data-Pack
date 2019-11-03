# Count down timer
scoreboard players remove @s ChaosTime 1

# Stop movement
effect give @s minecraft:slowness 1 9 true

# Remove timer
scoreboard players reset @s[scores={ChaosTime=0}] ChaosTime