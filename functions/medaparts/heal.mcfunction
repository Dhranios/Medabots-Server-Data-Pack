# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Heal=1}] Time 19
scoreboard players set @s[scores={Time=3,Heal=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:heart ~ ~1 ~ 1 0 1 1 10

# Heal user
scoreboard players add @s[scores={Time=32}] HeadArmor 20
execute if score @s[scores={Time=32}] HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor

# Affect teammates
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players add @a[distance=..16,tag=ally_medabot] HeadArmor 20
execute if entity @s[scores={Time=32},tag=ally_medabot] as @a[distance=..16,tag=ally_medabot] if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players add @e[distance=..16,tag=enemy_medabot] HeadArmor 20
execute if entity @s[scores={Time=32},tag=enemy_medabot] as @e[distance=..16,tag=ally_medabot] if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Heal=2,Time=32}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=34..}] Heal
scoreboard players set @s[scores={Time=34..}] Time 1