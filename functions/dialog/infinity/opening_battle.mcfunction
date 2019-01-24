scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression opening_battle
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1948 51 -614 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["erika","cutscene"],Rotation:[165.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6046341}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14574460}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:10272473}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
teleport @s[scores={Dialog=1}] -1949 51 -617 -15 0
execute at @s as @e[x=-1948,y=51,z=-614,tag=erika,distance=..1] run scoreboard players operation @s DialogNr = @a[distance=..0.1,limit=1,scores={Dialog=1}] DialogNr
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening_battle.1"}]}
execute if entity @s[scores={Dialog=2..167}] at @e[tag=erika] facing entity @s feet if score @s DialogNr = @e[distance=..0.1,limit=1,sort=nearest,tag=erika] DialogNr run teleport @e[distance=..0.1,limit=1,sort=nearest,tag=erika] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening_battle.2"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening_battle.3"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening_battle.4"}]}
execute if entity @s[scores={Dialog=168}] as @e[tag=erika] if score @s DialogNr = @a[distance=..0.1,limit=1,sort=nearest] DialogNr at @s run teleport @s ~ ~ ~ facing -1949 51 -593
tellraw @s[scores={Dialog=178}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening_battle.5"}]}
execute if entity @s[scores={Dialog=234..473}] at @e[tag=erika] facing entity @s feet if score @s DialogNr = @e[distance=..0.1,limit=1,sort=nearest,tag=erika] DialogNr run teleport @e[distance=..0.1,limit=1,sort=nearest,tag=erika] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=234}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening_battle.6"}]}
tellraw @s[scores={Dialog=250}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening_battle.7"}]}
tellraw @s[scores={Dialog=266}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening_battle.8","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=354}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening_battle.9"}]}
tellraw @s[scores={Dialog=450}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening_battle.10"}]}
execute if entity @s[scores={Dialog=474}] as @e[tag=erika] if score @s DialogNr = @a[distance=..0.1,limit=1,sort=nearest] DialogNr at @s run teleport @s ~ ~ ~ facing -1949 51 -593
execute if entity @s[scores={Dialog=475..563}] as @e[tag=erika] if score @s DialogNr = @a[distance=..0.1,limit=1,sort=nearest] DialogNr at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=563}] remove dialog_infinity_opening_battle
stopsound @s[scores={Dialog=563}] music
scoreboard players set @s[scores={Dialog=563}] MusicType 1
scoreboard players set @s[scores={Dialog=563}] Music 0
scoreboard players reset @s[scores={Dialog=563}] DialogNr
scoreboard players set @s[scores={Dialog=563}] Dialog 0

playsound medabots_server:music.entity.erika music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 100
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 502