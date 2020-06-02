# Move with
execute rotated ~ 0 run teleport @s ^ ^ ^ ~ 0

execute if entity @s[tag=appearing] run function medabots_server:animations/crazy_hand/appearing/hand

execute if entity @s[tag=!appearing,tag=!catch,tag=!applaud,tag=!double_punch,tag=!grab,tag=!grab_success,tag=!jet,tag=!ram,tag=!punch,tag=!fake_out,tag=!drill,tag=!slap,tag=!sweep,tag=!crush,tag=!poke,tag=!lasers,tag=!crawl,tag=!crawl_stop,tag=!bombs,tag=!spasm] run function medabots_server:animations/crazy_hand/idle/hand

execute if entity @s[tag=catch] run function medabots_server:animations/crazy_hand/catch/hand
execute if entity @s[tag=applaud] run function medabots_server:animations/crazy_hand/applaud/hand
execute if entity @s[tag=double_punch] run function medabots_server:animations/crazy_hand/double_punch/hand
execute if entity @s[tag=grab] run function medabots_server:animations/crazy_hand/grab/hand
execute if entity @s[tag=grab_success] run function medabots_server:animations/crazy_hand/grab_success/hand
execute if entity @s[tag=jet] run function medabots_server:animations/crazy_hand/jet/hand
execute if entity @s[tag=punch] run function medabots_server:animations/crazy_hand/punch/hand
execute if entity @s[tag=fake_out] run function medabots_server:animations/crazy_hand/fake_out/hand
execute if entity @s[tag=drill] run function medabots_server:animations/crazy_hand/drill/hand
execute if entity @s[tag=slap] run function medabots_server:animations/crazy_hand/slap/hand
execute if entity @s[tag=sweep] run function medabots_server:animations/crazy_hand/sweep/hand
execute if entity @s[tag=crush] run function medabots_server:animations/crazy_hand/crush/hand
execute if entity @s[tag=poke] run function medabots_server:animations/crazy_hand/poke/hand
execute if entity @s[tag=lasers] run function medabots_server:animations/crazy_hand/lasers/hand
execute if entity @s[tag=crawl,tag=!crawl_stop] run function medabots_server:animations/crazy_hand/crawl/hand
execute if entity @s[tag=crawl_stop] run function medabots_server:animations/crazy_hand/crawl_stop/hand
execute if entity @s[tag=bombs] run function medabots_server:animations/crazy_hand/bombs/hand
execute if entity @s[tag=spasm] run function medabots_server:animations/crazy_hand/spasm/hand