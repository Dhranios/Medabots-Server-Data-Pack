# Show particles
particle minecraft:heart ~ ~1 ~ 1 0 1 1 10

# Heal user
scoreboard players add @s HeadArmor 5
execute if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor

# Affect teammates
execute if entity @s[tag=ally_medabot] run scoreboard players add @a[distance=..16,tag=ally_medabot] HeadArmor 5
execute if entity @s[tag=ally_medabot] as @a[distance=..16,tag=ally_medabot] if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute if entity @s[tag=enemy_medabot] run scoreboard players add @e[distance=..16,tag=enemy_medabot] HeadArmor 5
execute if entity @s[tag=enemy_medabot] as @e[distance=..16,tag=ally_medabot] if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Heal=2}] HeadUses 1