# Stop music
stopsound @s music

# send death message depending on the death
execute if entity @s[tag=!had_death,tag=murder_mystery] as @a[scores={Killer=1},limit=1] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.murder_mystery","with":[{"selector":"@s"}]}
execute if entity @s[tag=!had_death,tag=death_message] as @a[scores={Killer=1},limit=1,tag=!murderer] run tellraw @a {"translate":"medabots_server:death.murder_mystery.killed_inocent","with":[{"selector":"@s"}]}
execute if entity @s[tag=!had_death,tag=death_message] as @a[scores={Killer=1},limit=1,tag=!murderer] run tag @s add had_death
execute if entity @s[tag=!had_death,tag=death_message] as @a[scores={Killer=1},limit=1,tag=!murderer] run kill @s
tag @s[tag=death_message] add had_death

execute if entity @s[tag=!had_death] if block ~ ~ ~ minecraft:lava run tellraw @a {"translate":"medabots_server:death.lava","with":[{"selector":"@s"}]}
execute if block ~ ~ ~ minecraft:lava run tag @s add had_death
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Sword=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.sword","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Hammer=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.hammer","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Stop=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.stop","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={destroy=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.destroy","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Napalm=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.napalm","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Melt=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.melt","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Missile=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.missile","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Infect=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.infect","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Wave=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.wave","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Sacrifice=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.sacrifice","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Gatling=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.gatling","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Bug=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.bug","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Laser=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.laser","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Break=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.break","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Press=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.press","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={falling=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.falling","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={Rifle=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.rifle","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @a[scores={Killer=1},limit=1] if entity @s[scores={SelfDestruct=1..}] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.self_destruct","with":[{"selector":"@s"},{"selector":"@a[limit=1,scores={Killer=1..}]"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:zombie,tag=cannon] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.cannon","with":[{"selector":"@s"},{"translate":"medabots_server:entity.cannon"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:creeper,tag=guard] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.guard","with":[{"selector":"@s"},{"translate":"medabots_server:entity.guard"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:wither_skeleton,tag=darknut] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.darknut","with":[{"selector":"@s"},{"translate":"medabots_server:entity.darknut"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:enderman,tag=shadow_beast] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.shadow_beast","with":[{"selector":"@s"},{"translate":"medabots_server:entity.shadow_beast"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:bat,tag=electrifier] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.electrifier","with":[{"selector":"@s"},{"translate":"medabots_server:entity.electrifier"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:skeleton,tag=sphere_doomer] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.sphere_doomer","with":[{"selector":"@s"},{"translate":"medabots_server:entity.sphere_doomer"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:spider,tag=argorok] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.argorok","with":[{"selector":"@s"},{"translate":"medabots_server:entity.argorok"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:ghast,tag=hr_d3] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.hr_d3","with":[{"selector":"@s"},{"translate":"medabots_server:entity.hr_d3"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:ghast,tag=magolor_soul] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.magolor_soul","with":[{"selector":"@s"},{"translate":"medabots_server:entity.magolor_soul"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:ghast,tag=lor_starcutter] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.lor_starcutter","with":[{"selector":"@s"},{"translate":"medabots_server:entity.lor_starcutter"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:wither_skeleton,tag=magolor] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.magolor","with":[{"selector":"@s"},{"translate":"medabots_server:entity.magolor"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:skeleton,tag=droid] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.droid","with":[{"selector":"@s"},{"translate":"medabots_server:entity.droid"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:spider,tag=topmaniac] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.topmaniac","with":[{"selector":"@s"},{"translate":"medabots_server:entity.topmaniac"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:cave_spider,tag=topman] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.topman","with":[{"selector":"@s"},{"translate":"medabots_server:entity.topman"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:ghast,tag=master_hand] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.master_hand","with":[{"selector":"@s"},{"translate":"medabots_server:entity.master_hand"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:ghast,tag=crazy_hand] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.crazy_hand","with":[{"selector":"@s"},{"translate":"medabots_server:entity.crazy_hand"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:giant,tag=master_giant] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.master_giant","with":[{"selector":"@s"},{"translate":"medabots_server:entity.master_giant"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:ghast,tag=master_beast] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.master_beast","with":[{"selector":"@s"},{"translate":"medabots_server:entity.master_beast"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:ghast,tag=master_edges] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.master_edges","with":[{"selector":"@s"},{"translate":"medabots_server:entity.master_edges"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:zombie,tag=master_core] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.master_core","with":[{"selector":"@s"},{"translate":"medabots_server:entity.master_core"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1] if entity @s[type=minecraft:zombie,tag=assasin] run tag @a[scores={Death=1},limit=1] add death_message
execute if entity @s[tag=!had_death,tag=death_message] run tellraw @a {"translate":"medabots_server:death.assasin","with":[{"selector":"@s"},{"translate":"medabots_server:entity.assasin"}]}
tag @s[tag=death_message] add had_death
tag @s[tag=death_message] remove death_message

# Remove 5 medallars
scoreboard players set @s[tag=!retry,scores={Money=..4}] Money 0
scoreboard players remove @s[tag=!retry,scores={Money=5..}] Money 5

# no message? try again
execute if entity @s[tag=!had_death,tag=!retry] run function medabots_server:medaparts/death_message_retry
tag @s[tag=!retry,tag=had_death] remove had_death