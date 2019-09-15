# Show particles
particle minecraft:totem_of_undying ~ ~1 ~ 1 0 1 1 10

# Remove all status effects
function medabots_server:effects/clear

# Affect teammates
execute if entity @s[tag=ally_medabot] as @a[distance=..16,tag=ally_medabot] run function medabots_server:effects/clear
execute if entity @s[tag=enemy_medabot] as @e[distance=..16,tag=enemy_medabot] run function medabots_server:effects/clear

# Remove from head uses if this was the head part
scoreboard players remove @s[tag=head_selected] HeadUses 1