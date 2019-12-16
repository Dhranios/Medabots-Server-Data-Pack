#execute if entity @s[scores={Medaforce=-2}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.spiral_bolt","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
#execute if entity @s[scores={Medaforce=-3}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.ultra_shot","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
#execute if entity @s[scores={Medaforce=-9}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.damage_ball","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
#execute if entity @s[scores={Medaforce=-11}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.life_drain","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
#execute if entity @s[scores={Medaforce=-12}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.destroyer","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
#execute if entity @s[scores={MedapartType=1}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.anti_fly","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=4}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.break","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=5}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.bug","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=8}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.destroy","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=9}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.falling","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=10}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.freeze","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=11}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.gatling","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=15}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.hammer","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=20}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.infect","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=21}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.laser","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=24}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.melt","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=25}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.missile","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=26}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.napalm","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=28}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.paralyze","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=30}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.press","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=32}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.rifle","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=33}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.sacrifice","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=37}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.sword","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={MedapartType=39}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.wave","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
execute if entity @s[scores={SelfDestruct=1..}] as @a[distance=..0.1,tag=death_message,limit=1] run tellraw @a {"translate":"medabots_server:death.medabot.self_destruct","with":[{"selector":"@s"},{"selector":"@e[scores={Killer=1},limit=1]"}]}
