scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity select_corps_warning
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.select_corps_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 70
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -394 55 -52 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["select_corps","cutscene"],Rotation:[90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2437407}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13948116}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:10473420}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"SelectCorps",Properties:{textures:[{Signature:"dLJPvutuIUDWV7Phd3RMXO4H79KDx7STmgirB6arX9ciVDjChQpz51frdvYM4vMS6hcbBzmJJ5eQlWl2lPDrR38F6xAY1mvlZDGSAC9rd7YzQAqL216tMo73+nwkQf9mb09EtE74399rQwqkBsDJOt/jm3VOJ4OcrMm4jwHfrxkZsNI4172k52pG4ZSmMf96XfjCOPVPddnefbiZw4OWu1qaqqAl6eG5fQyG229Qs/TF6ENODQKMTQMT0zSzwc2BsAWEzSg6MB9ddLflWCNoSOLvciiiSOz9j7aZ9YgcsC8rmz52/HgOGscMcYCQBMnHGOco+0sW4kR0jv4E8JBcqi36ozkl8UH/tdeonnZzP1W4tmSCmCo+rhQDXBauUO+Aw+eUi+ohg4pwy+jpRGpjja379z+TdG+GLlInkdlnWCAL2LIRV5pjdkFfX4umCemMorfUwHMIcJ/yvQg0CB+5IidBi2nvfbeI0W5KYrpMTch9mPSj3xOVTVG8yiygLAig668SZzdP/Z5IThx+ZIB/MHATyKri4WRdvqpQlKJ91dHecTUpQ35MntHW7hok8MaKZ3kkKhabFd88Rfq1j/stHqzr35D+rMIlnbtYp76xXeMmffeLyEgBvZC1tila2tNBFR6MGah0swjmaOe3Ss7nOlZmZfwI0XJJrHKMbsfKqgA=",Value:"eyJ0aW1lc3RhbXAiOjE1NTU3OTIxNTQ2NjYsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTIzOTU1NGZkNjIzZWY3Y2M2OTVkMmYzNjg2ODE5ZTZhMDMzOWJkMTJiNGUxZTliYzMwOWExYjBlZWRhZDhkMiJ9LCJDQVBFIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2NzdmN2Q5OGFjNzBhNTMzNzEzNTE4NDE2ZGY0NDUyZmU1NzAwMzY1YzA5Y2Y0NWQwZDE1NmVhOTM5NjU1MSJ9fX0="}]},Name:"SelectCorps"}}}]}
execute at @s as @e[x=-394,y=55,z=-52,tag=select_corps,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[x=-394,y=55,z=-52,distance=..4] -399 55 -52
execute if entity @s[scores={Dialog=2..81}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=82..255}] at @e[tag=select_corps,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=select_corps,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.select_corps_warning.1"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.select_corps_warning.2"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.select_corps_warning.3"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.select_corps_warning.4"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.select_corps_warning.5"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.select_corps_warning.6"}]}
execute if entity @s[scores={Dialog=256}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=257..}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=297}] remove dialog_infinity_select_corps_warning
stopsound @s[scores={Dialog=297}] music
scoreboard players set @s[scores={Dialog=297}] MusicType 1
scoreboard players set @s[scores={Dialog=297}] Music 0
scoreboard players reset @s[scores={Dialog=297}] DialogNr
scoreboard players set @s[scores={Dialog=297}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.select_corps music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 720
