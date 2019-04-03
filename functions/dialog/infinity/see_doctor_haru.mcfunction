scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression see_doctor_haru
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -318 55 -107 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["doctor_haru","cutscene"],Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b,display:{color:14899631}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,display:{color:14857855}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,display:{color:15790320}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"DoctorHaru",Properties:{textures:[{Signature:"sh3bCMdV/PQQ8ZjkEgJYT2OLf1/fUJmhRDYcRgTUlRp+pvLtqodqIWGJVv9ZJjX1rAEScyMmclDNPRw5fpZkdFzeNeCOndf0AE8UAgl0H8Cclsqh7mnxvI3w9Bn7rN8wimxdbwIMVUtzxZXlhEQAnHzGjr7JK0cV6nA/vciDAW1paq3451URs6x2dijYKefH1xXZ3R40Sj3N6dtt3ScOHRbSmvYUxi2/XO//c+xch/RPNwLAQqnsMSCQt/MSszhoAuZNgRTT1Zr20+cYkPdiuMH91gATBuuQCgExjkjkTGY4UTm9fjtS0qGmsMq/x0x2dLCSzX352bet8juJQzcDDP4ADukNKIWVkzzVku5mKGR4WAOkdOuP2xMlitg71NWoE55AP7+/eMPdTBqev+H50WPl82J/x1sANQdsLahU7tKODnDkVDBdslUIpqlQmgOvOqmnB2W1XCfZzkCY6UzwPyPlDFxQnc7/QhRO4RrZSfyY7ckjzhsOObu9X3m8tKMo6ga5u1U8X1rFb/OmFfoYQWgTM+eo/DEhoL44XbjbbQOynyNWg076oiUcTAzHqURYLPoxU2JicVwgck4tXM4w41eflYG1jmvvoU9GHBzOBfQuhSUeY1Gpzx/zfd5GIdnj93J8BZiwHV82Fmem4PqvRiRTCboCmo7A6n65TMPkerA=",Value:"eyJ0aW1lc3RhbXAiOjE0ODY4MjE4Mjk5MDIsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzE5YmRiMDJiMjQ1YmNkZGUyZDk2ODE3YmYzZWE0NDJlMzUyMzE0ZDRlMTZkMTY3MmVlMzQyMjg4ZGEzNGUwIn0sIkNBUEUiOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9mOGI1NWNhMzIyZTY0YTM4MWI2NDg0ZGFjMmQ4YWE0MmM3OGM2MTI5MzM2ZWEzZWY0NTk2ZjFkMzFiMjdlZiJ9fX0="}]},Name:"DoctorHaru"}}}]}
execute at @s as @e[x=-318,y=55,z=-107,tag=doctor_haru,distance=..1] run scoreboard players operation @s DialogNr = @a[distance=..0.1,limit=1,scores={Dialog=1}] DialogNr
execute if entity @s[scores={Dialog=1..127}] at @e[tag=doctor_haru] facing entity @s feet if score @s DialogNr = @e[distance=..0.1,limit=1,sort=nearest,tag=doctor_haru] DialogNr run teleport @e[distance=..0.1,limit=1,sort=nearest,tag=doctor_haru] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.see_doctor_haru.1"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.see_doctor_haru.2"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.see_doctor_haru.3"}]}
execute if entity @s[scores={Dialog=128}] as @e[tag=doctor_haru] if score @s DialogNr = @a[distance=..0.1,limit=1,sort=nearest] DialogNr at @s run teleport @s ~ ~ ~ facing -308 55 -107
execute if entity @s[scores={Dialog=129..176}] as @e[tag=doctor_haru] if score @s DialogNr = @a[distance=..0.1,limit=1,sort=nearest] DialogNr at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=177}] as @e[tag=doctor_haru] if score @s DialogNr = @a[distance=..0.1,limit=1,sort=nearest] DialogNr at @s run teleport @s ~ ~ ~ facing -304 55 -84
execute if entity @s[scores={Dialog=178..}] as @e[tag=doctor_haru] if score @s DialogNr = @a[distance=..0.1,limit=1,sort=nearest] DialogNr at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=238}] remove dialog_infinity_see_doctor_haru
stopsound @s[scores={Dialog=238}] music
scoreboard players set @s[scores={Dialog=238}] MusicType 1
scoreboard players set @s[scores={Dialog=238}] Music 0
scoreboard players reset @s[scores={Dialog=238}] DialogNr
scoreboard players set @s[scores={Dialog=238}] Dialog 0

playsound medabots_server:music.entity.doctor_haru music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 100
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 609