# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:totem_of_undying ~ ~1 ~ 1 0 1 1 10

# Remove all status effects
execute if entity @s[scores={Time=20}] run function medabots_server:medaparts/remove_effects

# Affect teammates
execute if entity @s[scores={Time=20},tag=ally_medabot] as @a[distance=..16,tag=ally_medabot] run function medabots_server:medaparts/remove_effects
execute if entity @s[scores={Time=20},tag=enemy_medabot] as @a[distance=..16,tag=enemy_medabot] run function medabots_server:medaparts/remove_effects

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={StatusClear=2,Time=20}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=30..}] StatusClear
scoreboard players set @s[scores={Time=30..}] Time 0

# Increase time by 1
scoreboard players add @s[scores={StatusClear=1..}] Time 1