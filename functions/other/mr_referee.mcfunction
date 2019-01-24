# "Look at the sky, the stars, and the universe, there is no better robattle referee in this whole universe than I, Mr. Referee! Enjoy the robattle from the bottom of your heart! Are you ready?"
execute unless entity @s[scores={Dialog=0..}] run scoreboard players set @s Dialog 0
scoreboard players add @s[scores={Dialog=..193}] Dialog 1
execute if entity @s[scores={Dialog=1}] as @e[tag=hostile,tag=!dead] unless entity @s[type=!minecraft:player,type=!minecraft:skeleton] if score @s Stage = @e[distance=..0.1,limit=1] Stage run tag @s add waiting_for_referee
data merge entity @s[scores={Dialog=1}] {CustomNameVisible:0b,ShowArms:1b,NoBasePlate:1b,Small:0b,Invisible:0b,NoGravity:1b,Marker:1b,HandItems:[{},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[],display:{color:5921370}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[],display:{color:4342338}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[],display:{color:13816530}}},{id:"minecraft:player_head",Count:1b,Damage:3s,tag:{SkullOwner:{Id:"Mr_Referee",Properties:{textures:[{Signature:"TuHci2Cj+a9irXk2euKg4p1yo3HIUbMaTxCPGpWWQDHHAkN3sN+h5kRyDGiirfihwReDmontRatqAjXiYumNSDBrLFJ1EP75+AeCVeoweSurcPHCzuQjmjE+LvqSkdoPGmf0u3fsFdsY9lebiN+Bc/5z+Uv6R1ihlx9XyyeOwtyvF4mWb4k7IlOGuG6yfeqCxAUyLHzB26xznsLPP3vrhRsR07qhKbuPx/U5BIt7YvgR30L8qmTzmmSNAm6r7uh2UmcEUwGhTQLWw9JXvW8inUvlLpYqEgncPIzKT1o9VwrDGrRZG3U6h5j50i9haME8ZiqRI881lWO/HhhNMemx1krD2pQmFV+e+aKhPvxE/PsQNCpYmEUV+b6/2R6r+Med7NrZ+DAGTXUzjCbvvBnaMtUh6HCR++0HCfil8+nKRsil1KB4FRoprvztxvl57eNlkBY7y7S9GxIq9FIoqY9gSFtmTe26PB+rrwYufZYBEqyw9u2u8xRnR0QS92l6QEbUqWekkrQH9nX9RlzwQqpNkb5PcZeOYPzlPnBJZHJ6itbJcfwokWPIGtzHEZKz1fc29uocB2wn7XxOqPsefvlPrET+q9t+pr/swlmjLvI8DCOPHb9ZdhghXw1YvecSol9v5yF2sPo/CrMQjB2b1V8PEYJJDN5Jj6XRJHmoF+X5Wz0=",Value:"eyJ0aW1lc3RhbXAiOjE0OTU3MDYzNjM4OTcsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzZmN2I0N2U3ZWEwOTc2NWM5NjRkOWI1ZWRjNGQzYzNkNTdiOWQ4ZGQ2YWJmZWZiZDUzNTljNjZiMTBlZjFjIn0sIkNBUEUiOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9mOGI1NWNhMzIyZTY0YTM4MWI2NDg0ZGFjMmQ4YWE0MmM3OGM2MTI5MzM2ZWEzZWY0NTk2ZjFkMzFiMjdlZiJ9fX0="}]},Name:"Mr_Referee"}}}],DisabledSlots:2039583}
execute if entity @s[scores={Dialog=1}] run scoreboard players set @e[tag=waiting_for_referee,scores={Battle=1}] Battle 2
execute if entity @s[scores={Dialog=1}] run stopsound @a[tag=waiting_for_referee] music
execute if entity @s[scores={Dialog=1}] run playsound medabots_server:music.entity.mr_referee music @a[tag=waiting_for_referee] ~ ~ ~ 5
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=waiting_for_referee] Music 193
execute if entity @s[scores={Dialog=1}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee"},{"translate":"medabots_server:message.mr_referee.speech.1.1","with":[{"selector":"@e[tag=waiting_for_referee]"}]}]}
execute if entity @s[scores={Dialog=1}] run tag @e[tag=waiting_for_referee] remove waiting_for_referee
execute if entity @s[scores={Dialog=81}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee"},{"translate":"medabots_server:message.mr_referee.speech.1.2","with":[{"translate":"medabots_server:entity.mr_referee"}]}]}
execute if entity @s[scores={Dialog=192}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee"},{"translate":"medabots_server:message.mr_referee.speech.1.3"}]}
execute if entity @s[scores={Dialog=193}] as @a[tag=hostile,tag=!dead,scores={Battle=2}] if score @s Stage = @e[distance=..0.1,limit=1] Stage run stopsound @s music medabots_server:music.entity.mr_referee
execute if entity @s[scores={Dialog=192}] as @e[tag=hostile,tag=!dead,scores={Battle=2}] unless entity @s[type=!minecraft:player,type=!minecraft:skeleton] if score @s Stage = @e[distance=..0.1,limit=1] Stage run scoreboard players set @s Battle 1
data merge entity @s[scores={Dialog=193}] {Small:1b,Invisible:1b,ArmorItems:[{},{},{},{}]}

# Select battle music depending on arbitrary player for each check
scoreboard players set @s[scores={Dialog=193}] RobattleMusic 0
execute if entity @s[scores={RobattleMusic=0}] at @a[limit=1,sort=nearest,tag=hostile] at @a[scores={Medabot=24},distance=..0.1] run scoreboard players set @s RobattleMusic 1
execute if entity @s[scores={RobattleMusic=0}] at @a[limit=1,sort=nearest,tag=hostile] at @a[scores={Medabot=17},distance=..0.1] run scoreboard players set @s RobattleMusic 2
execute if entity @s[scores={RobattleMusic=0}] at @a[limit=1,sort=nearest,tag=hostile] at @a[scores={Medabot=14},distance=..0.1] run scoreboard players set @s RobattleMusic 3
execute if entity @s[scores={RobattleMusic=0}] at @a[limit=1,sort=nearest,tag=hostile] at @a[scores={Medabot=15},distance=..0.1] run scoreboard players set @s RobattleMusic 4
execute if entity @s[scores={RobattleMusic=0}] at @a[limit=1,sort=nearest,tag=hostile] at @a[scores={Medabot=50},distance=..0.1] run scoreboard players set @s RobattleMusic 5
execute if entity @s[scores={RobattleMusic=0}] at @a[limit=1,sort=nearest,tag=hostile] at @a[scores={Medabot=25},distance=..0.1] run scoreboard players set @s RobattleMusic 6
execute if entity @s[scores={RobattleMusic=0}] at @a[limit=1,sort=nearest,tag=hostile] at @a[scores={Medabot=23},distance=..0.1] run scoreboard players set @s RobattleMusic 7
execute if entity @s[scores={RobattleMusic=0}] at @a[limit=1,sort=nearest,tag=hostile] at @a[scores={Medabot=45},distance=..0.1] run scoreboard players set @s RobattleMusic 8
execute if entity @s[scores={RobattleMusic=0}] at @a[limit=1,sort=nearest,tag=hostile] at @a[scores={Medabot=46},distance=..0.1] run scoreboard players set @s RobattleMusic 9
execute if entity @s[scores={RobattleMusic=0}] at @a[limit=1,sort=nearest,tag=hostile] at @a[scores={Medabot=15},distance=..0.1] run scoreboard players set @s RobattleMusic 10
execute if entity @s[scores={RobattleMusic=0}] at @a[limit=1,sort=nearest,tag=hostile] at @a[scores={Medabot=52},distance=..0.1] run scoreboard players set @s RobattleMusic 11
execute if entity @a[scores={Rubberrobo=-4}] run scoreboard players set @s[scores={RobattleMusic=0}] RobattleMusic -2
scoreboard players set @s[scores={RobattleMusic=0}] RobattleMusic -1

# Play the battle music
execute if entity @s[scores={RobattleMusic=-2}] run playsound medabots_server:music.battle.rubberrobo music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=-2}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 1060
execute if entity @s[scores={RobattleMusic=-1}] run playsound medabots_server:music.battle music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=-1}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 2285
execute if entity @s[scores={RobattleMusic=1}] run playsound medabots_server:music.battle.blackbeetle music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=1}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 1712
execute if entity @s[scores={RobattleMusic=2}] run playsound medabots_server:music.battle.god_emperor music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=2}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 1780
execute if entity @s[scores={RobattleMusic=3}] run playsound medabots_server:music.battle.blackstag music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=3}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 2430
execute if entity @s[scores={RobattleMusic=4}] run playsound medabots_server:music.battle.arcbeetle music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=4}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 2285
execute if entity @s[scores={RobattleMusic=5}] run playsound medabots_server:music.battle.iron_man music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=5}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 2439
execute if entity @s[scores={RobattleMusic=6}] run playsound medabots_server:music.battle.zant music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=6}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 3299
execute if entity @s[scores={RobattleMusic=7}] run playsound medabots_server:music.battle.darknut music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=7}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 2882
execute if entity @s[scores={RobattleMusic=8}] run playsound medabots_server:music.battle.magolor music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=8}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 1852
execute if entity @s[scores={RobattleMusic=9}] run playsound medabots_server:music.battle.amelia music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=9}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 4014
execute if entity @s[scores={RobattleMusic=10}] run playsound medabots_server:music.battle.sphere_doomers music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=10}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 692
execute if entity @s[scores={RobattleMusic=11}] run playsound medabots_server:music.battle.mewtwo music @a[distance=..50,scores={Battle=1..,Music=1}] ~ ~ ~ 5
execute if entity @s[scores={RobattleMusic=11}] run scoreboard players set @a[distance=..50,scores={Battle=1..,Music=1}] Music 2682