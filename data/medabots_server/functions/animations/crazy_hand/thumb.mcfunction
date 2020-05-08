# Move with
execute at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^ ^

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=!appeared,limit=1] run tag @s add appearing
execute if entity @s[tag=appearing] run function medabots_server:animations/crazy_hand/appearing/thumb
scoreboard players set @s[tag=!appearing,tag=was_appearing] AnimationProg 0
data merge entity @s[tag=!appearing,tag=was_appearing] {Pose:{Head:[0.001f,0.001f,0.001f]}}
tag @s[tag=!appearing] remove was_appearing
tag @s[tag=appearing] add was_appearing
tag @s[tag=appearing] remove appearing

execute if entity @s[tag=!was_appearing,tag=!catch,tag=!applaud,tag=!double_punch,tag=!grab,tag=!grab_success,tag=!jet,tag=!ram,tag=!punch,tag=!fake_out,tag=!drill,tag=!slap,tag=!sweep,tag=!crush,tag=!poke,tag=!lasers,tag=!crawl,tag=!crawl_stop,tag=!bombs,tag=!spasm] run function medabots_server:animations/crazy_hand/idle/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=catch,limit=1] run scoreboard players set @s[tag=!catch] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=catch,limit=1] run tag @s add catch
execute if entity @s[tag=catch] run function medabots_server:animations/crazy_hand/catch/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=applaud,limit=1] run scoreboard players set @s[tag=!applaud] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=applaud,limit=1] run tag @s add applaud
execute if entity @s[tag=applaud] run function medabots_server:animations/crazy_hand/applaud/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=double_punch,limit=1] run scoreboard players set @s[tag=!double_punch] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=double_punch,limit=1] run tag @s add double_punch
execute if entity @s[tag=double_punch] run function medabots_server:animations/crazy_hand/double_punch/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=grab,limit=1] run scoreboard players set @s[tag=!grab] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=grab,limit=1] run tag @s add grab
execute if entity @s[tag=grab] run function medabots_server:animations/crazy_hand/grab/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=grab_success,limit=1] run scoreboard players set @s[tag=!grab_success] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=grab_success,limit=1] run tag @s add grab_success
execute if entity @s[tag=grab_success] run function medabots_server:animations/crazy_hand/grab_success/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=jet,limit=1] run scoreboard players set @s[tag=!jet] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=jet,limit=1] run tag @s add jet
execute if entity @s[tag=jet] run function medabots_server:animations/crazy_hand/jet/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=ram,limit=1] run scoreboard players set @s[tag=!ram] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=ram,limit=1] run tag @s add ram
execute if entity @s[tag=ram] run function medabots_server:animations/crazy_hand/ram/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=punch,limit=1] run scoreboard players set @s[tag=!punch] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=punch,limit=1] run tag @s add punch
execute if entity @s[tag=punch] run function medabots_server:animations/crazy_hand/punch/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=fake_out,limit=1] run scoreboard players set @s[tag=!fake_out] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=fake_out,limit=1] run tag @s add fake_out
execute if entity @s[tag=fake_out] run function medabots_server:animations/crazy_hand/fake_out/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=drill,limit=1] run scoreboard players set @s[tag=!drill] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=drill,limit=1] run tag @s add drill
execute if entity @s[tag=drill] run function medabots_server:animations/crazy_hand/drill/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=slap,limit=1] run scoreboard players set @s[tag=!slap] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=slap,limit=1] run tag @s add slap
execute if entity @s[tag=slap] run function medabots_server:animations/crazy_hand/slap/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=sweep,limit=1] run scoreboard players set @s[tag=!sweep] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=sweep,limit=1] run tag @s add sweep
execute if entity @s[tag=sweep] run function medabots_server:animations/crazy_hand/sweep/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=crush,limit=1] run scoreboard players set @s[tag=!crush] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=crush,limit=1] run tag @s add crush
execute if entity @s[tag=crush] run function medabots_server:animations/crazy_hand/crush/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=poke,limit=1] run scoreboard players set @s[tag=!poke] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=poke,limit=1] run tag @s add poke
execute if entity @s[tag=poke] run function medabots_server:animations/crazy_hand/poke/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=lasers,limit=1] run scoreboard players set @s[tag=!lasers] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=lasers,limit=1] run tag @s add lasers
execute if entity @s[tag=lasers] run function medabots_server:animations/crazy_hand/lasers/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=crawl,limit=1] run scoreboard players set @s[tag=!crawl] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=crawl,limit=1] run tag @s add crawl
execute if entity @s[tag=crawl] run function medabots_server:animations/crazy_hand/crawl/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=crawl_stop,limit=1] run scoreboard players set @s[tag=!crawl_stop] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=crawl_stop,limit=1] run tag @s add crawl_stop
execute if entity @s[tag=crawl_stop] run function medabots_server:animations/crazy_hand/crawl_stop/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=bombs,limit=1] run scoreboard players set @s[tag=!bombs] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=bombs,limit=1] run tag @s add bombs
execute if entity @s[tag=bombs] run function medabots_server:animations/crazy_hand/bombs/thumb

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=spasm,limit=1] run scoreboard players set @s[tag=!spasm] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=spasm,limit=1] run tag @s add spasm
execute if entity @s[tag=spasm] run function medabots_server:animations/crazy_hand/spasm/thumb