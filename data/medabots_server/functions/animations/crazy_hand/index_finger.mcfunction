# Move with
execute rotated ~ 0 run teleport @s ^ ^0.4 ^0.5 ~ 0

execute if entity @s[tag=appearing] run function medabots_server:animations/crazy_hand/appearing/index_finger

execute if entity @s[tag=!appearing,tag=!catch,tag=!applaud,tag=!double_punch,tag=!grab,tag=!grab_success,tag=!jet,tag=!ram,tag=!punch,tag=!fake_out,tag=!drill,tag=!slap,tag=!sweep,tag=!crush,tag=!poke,tag=!lasers,tag=!crawl,tag=!crawl_stop,tag=!bombs,tag=!spasm] run function medabots_server:animations/crazy_hand/idle/index_finger

execute if entity @s[tag=catch] run function medabots_server:animations/crazy_hand/catch/index_finger
execute if entity @s[tag=applaud] run function medabots_server:animations/crazy_hand/applaud/index_finger
execute if entity @s[tag=double_punch] run function medabots_server:animations/crazy_hand/double_punch/index_finger
execute if entity @s[tag=grab] run function medabots_server:animations/crazy_hand/grab/index_finger
execute if entity @s[tag=grab_success] run function medabots_server:animations/crazy_hand/grab_success/index_finger
execute if entity @s[tag=jet] run function medabots_server:animations/crazy_hand/jet/index_finger
execute if entity @s[tag=ram] run function medabots_server:animations/crazy_hand/ram/index_finger
execute if entity @s[tag=punch] run function medabots_server:animations/crazy_hand/punch/index_finger
execute if entity @s[tag=fake_out] run function medabots_server:animations/crazy_hand/fake_out/index_finger
execute if entity @s[tag=drill] run function medabots_server:animations/crazy_hand/drill/index_finger
execute if entity @s[tag=slap] run function medabots_server:animations/crazy_hand/slap/index_finger
execute if entity @s[tag=sweep] run function medabots_server:animations/crazy_hand/sweep/index_finger
execute if entity @s[tag=crush] run function medabots_server:animations/crazy_hand/crush/index_finger
execute if entity @s[tag=poke] run function medabots_server:animations/crazy_hand/poke/index_finger
execute if entity @s[tag=lasers] run function medabots_server:animations/crazy_hand/lasers/index_finger
execute if entity @s[tag=crawl,tag=!crawl_stop] run function medabots_server:animations/crazy_hand/crawl/index_finger
execute if entity @s[tag=crawl_stop] run function medabots_server:animations/crazy_hand/crawl_stop/index_finger
execute if entity @s[tag=bombs] run function medabots_server:animations/crazy_hand/bombs/index_finger
execute if entity @s[tag=spasm] run function medabots_server:animations/crazy_hand/spasm/index_finger