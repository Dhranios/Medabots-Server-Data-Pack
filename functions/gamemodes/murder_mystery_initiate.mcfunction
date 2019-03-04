execute at @s[scores={Stage=1..},tag=murder_mystery] if score @s Stage = @a[distance=..0.1,limit=1,tag=murder_mystery] Stage run tag @s add process
tag @a[tag=process,sort=random,limit=1] add murderer
tag @a[tag=process,tag=!sheriff,sort=random,limit=1] add sheriff
tag @a[tag=process] remove process