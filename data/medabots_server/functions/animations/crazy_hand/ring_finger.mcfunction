# Move with
execute rotated ~ 0 run teleport @s ^ ^0.4 ^0.5 ~ 0

execute if entity @s[tag=appearing] run function medabots_server:animations/crazy_hand/appearing/ring_finger

execute if entity @s[tag=!appearing,tag=!catch,tag=!applaud,tag=!double_punch,tag=!grab,tag=!grab_success,tag=!jet,tag=!ram,tag=!punch,tag=!fake_out,tag=!drill,tag=!slap,tag=!sweep,tag=!crush,tag=!poke,tag=!lasers,tag=!crawl,tag=!crawl_stop,tag=!bombs,tag=!spasm] run function medabots_server:animations/crazy_hand/idle/ring_finger

execute if entity @s[tag=catch] run function medabots_server:animations/crazy_hand/catch/ring_finger
execute if entity @s[tag=applaud] run function medabots_server:animations/crazy_hand/applaud/ring_finger
execute if entity @s[tag=double_punch] run function medabots_server:animations/crazy_hand/double_punch/ring_finger
execute if entity @s[tag=grab] run function medabots_server:animations/crazy_hand/grab/ring_finger
execute if entity @s[tag=grab_success] run function medabots_server:animations/crazy_hand/grab_success/ring_finger
execute if entity @s[tag=jet] run function medabots_server:animations/crazy_hand/jet/ring_finger
execute if entity @s[tag=ram] run function medabots_server:animations/crazy_hand/ram/ring_finger
execute if entity @s[tag=punch] run function medabots_server:animations/crazy_hand/punch/ring_finger
execute if entity @s[tag=fake_out] run function medabots_server:animations/crazy_hand/fake_out/ring_finger
execute if entity @s[tag=drill] run function medabots_server:animations/crazy_hand/drill/ring_finger
execute if entity @s[tag=slap] run function medabots_server:animations/crazy_hand/slap/ring_finger
execute if entity @s[tag=sweep] run function medabots_server:animations/crazy_hand/sweep/ring_finger
execute if entity @s[tag=crush] run function medabots_server:animations/crazy_hand/crush/ring_finger
execute if entity @s[tag=poke] run function medabots_server:animations/crazy_hand/poke/ring_finger
execute if entity @s[tag=lasers] run function medabots_server:animations/crazy_hand/lasers/ring_finger
execute if entity @s[tag=crawl,tag=!crawl_stop] run function medabots_server:animations/crazy_hand/crawl/ring_finger
execute if entity @s[tag=crawl_stop] run function medabots_server:animations/crazy_hand/crawl_stop/ring_finger
execute if entity @s[tag=bombs] run function medabots_server:animations/crazy_hand/bombs/ring_finger
execute if entity @s[tag=spasm] run function medabots_server:animations/crazy_hand/spasm/ring_finger