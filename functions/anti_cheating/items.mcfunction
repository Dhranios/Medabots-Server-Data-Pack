# Not allowed items
clear @s[tag=!hostile] minecraft:diamond_axe{medabots_server:{id:"medabots_server:pot_breaker"}}
clear @s[tag=hostile] #medabots_server:hostile_banned_items

# no armor points allowed
replaceitem entity @s[scores={WearsArmor=1..},tag=hostile] armor.head minecraft:air
replaceitem entity @s[scores={WearsArmor=1..},tag=hostile] armor.chest minecraft:air
replaceitem entity @s[scores={WearsArmor=1..},tag=hostile] armor.legs minecraft:air
replaceitem entity @s[scores={WearsArmor=1..},tag=hostile] armor.feet minecraft:air