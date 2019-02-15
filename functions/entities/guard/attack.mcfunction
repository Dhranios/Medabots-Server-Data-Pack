effect give @e[distance=..1,tag=hostile,tag=!guard] minecraft:instant_damage 1 0 true
playsound medabots_server:entity.guard.attack hostile @a ~ ~ ~ 1
scoreboard players set @s Time 60