scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression opening_battle
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1948 51 -614 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["erika","cutscene"],Rotation:[165.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6046341}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14574460}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:10272473}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"Erika2",Properties:{textures:[{Signature:"mpGErjZa28jt8zB5/0jkQFqsGs/zBUOSvHRxuoa26xdSSDaz99zzLe1maoj27HXV4iQYwn7QZiiee7Y1iE69tjmuv5/SjUxRP3kBANAhy53JcoptJXso9t41cTYN7PMVXXg1qzYnimDv16weV/QJ7+YVPJQl3wNglXxVVsvDhZ3sBvkBMcWkbDTNJZvE/dU8hRDiNlDJiG/VG26B4Eaj8NwidBHqX1YB0ONMRJFC86OAz3yicDNoJQHmm/ReM+2C7oR7FO9NRpnQHN0cQlEAI1PQLi3/Ojr/mVZEkFjkfI2gRfOgTE4AZ25DEZ/IqBEpQYCXp+r/x6Mf2JXJIgvycnNoyRnV8tPnBn+jH5B/go0wHX5XsAaPRhhxiPtTeNThODdtW27S9OF+hxeJ3nsc3Pjw9vCRbJGlzLN6cAesL0D3BnGJ4gFU1WIh4On4aCLlaIL+QuZKz+phkqj8/MsgMRaUuqvoA6ViIcH6jc6NliC32w+hg9YO29Nw/3Y0wIxemU4OMlGb9uM03YyMXzfGlWYJiIgRvmkq+SK2Y7T4fYJoSN/uat7JlGZjPBwJi7KSs8w3vR4aVae6o0daEiEZw/hdYH4UduOemq8QQ3YJ9ItRiokVBVeU4zq6MIEfXYmbF+NxwzTvtKhmnV02+W65vCDrwXZERvc8QWIBiRkZSRg=",Value:"eyJ0aW1lc3RhbXAiOjE1NTU3OTE2Mzg3MzEsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzhjZDM4YWVkZjc4YzdlNjk2ODYyMzRkMjQxODViNjhmYTU0ZWNjZTQzZGQyZjc2ZDZmZWEwYmY4NmM2NDNiOSJ9LCJDQVBFIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2NzdmN2Q5OGFjNzBhNTMzNzEzNTE4NDE2ZGY0NDUyZmU1NzAwMzY1YzA5Y2Y0NWQwZDE1NmVhOTM5NjU1MSJ9fX0="}]},Name:"Erika2"}}}]}
execute at @s as @e[x=-1948,y=51,z=-614,tag=erika,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..167}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -617 -15 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening_battle.1"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening_battle.2"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening_battle.3"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening_battle.4"}]}
execute if entity @s[scores={Dialog=168}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -593
tellraw @s[scores={Dialog=178}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening_battle.5"}]}
execute if entity @s[scores={Dialog=234..473}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=234}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening_battle.6"}]}
tellraw @s[scores={Dialog=250}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening_battle.7"}]}
tellraw @s[scores={Dialog=266}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening_battle.8","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=354}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening_battle.9"}]}
tellraw @s[scores={Dialog=450}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening_battle.10"}]}
execute if entity @s[scores={Dialog=474}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -593
execute if entity @s[scores={Dialog=475..563}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=563}] remove dialog_infinity_opening_battle
stopsound @s[scores={Dialog=563}] music
scoreboard players set @s[scores={Dialog=563}] MusicType 1
scoreboard players set @s[scores={Dialog=563}] Music 0
scoreboard players reset @s[scores={Dialog=563}] DialogNr
scoreboard players set @s[scores={Dialog=563}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.erika music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 502