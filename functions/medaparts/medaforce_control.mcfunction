# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=2,MedaforceControl=1}] Time 10
scoreboard players set @s[scores={Time=2,MedaforceControl=3}] Time 20

# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:angry_villager ~ ~1 ~ 1 0 1 1 10

# Set to toggle allowing medaforce
execute if entity @s[scores={Time=20},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^3.5 as @e[distance=..3.5,tag=hostile] unless entity @s[scores={Time=20,MedaforceControl=1..3}] run tag @s[tag=!medaforce_block] add medaforce_block
execute if entity @s[scores={Time=20},tag=ally_medabot] positioned ^ ^ ^3.5 as @e[distance=..3.5,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=20,MedaforceControl=1..3}] run tag @s[tag=!medaforce_block] add medaforce_block
execute if entity @s[scores={Time=20},tag=enemy_medabot] positioned ^ ^ ^3.5 as @e[distance=..3.5,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=20,MedaforceControl=1..3}] run tag @s[tag=!medaforce_block] add medaforce_block

# Toggle medaforce
tag @e[tag=medaforce_block,tag=!blocked_medaforce] add blocking
tag @e[tag=blocking] add blocked_medaforce
tag @e[tag=medaforce_block,tag=!blocking] remove blocked_medaforce
tag @e[tag=medaforce_block] remove medaforce_block
tag @e[tag=blocking] remove blocking

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={MedaforceControl=2,Time=22}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=30..}] MedaforceControl
scoreboard players set @s[scores={Time=30..}] Time 1