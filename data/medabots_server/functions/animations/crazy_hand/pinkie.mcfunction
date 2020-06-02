# Move with
execute rotated ~ 0 run teleport @s ^ ^0.4 ^0.5 ~ 0

execute if entity @s[tag=appearing] run function medabots_server:animations/crazy_hand/appearing/pinkie

execute if entity @s[tag=!appearing,tag=!catch,tag=!applaud,tag=!double_punch,tag=!grab,tag=!grab_success,tag=!jet,tag=!ram,tag=!punch,tag=!fake_out,tag=!drill,tag=!slap,tag=!sweep,tag=!crush,tag=!poke,tag=!lasers,tag=!crawl,tag=!crawl_stop,tag=!bombs,tag=!spasm] run function medabots_server:animations/crazy_hand/idle/pinkie

execute if entity @s[tag=catch] run function medabots_server:animations/crazy_hand/catch/pinkie
execute if entity @s[tag=applaud] run function medabots_server:animations/crazy_hand/applaud/pinkie
execute if entity @s[tag=double_punch] run function medabots_server:animations/crazy_hand/double_punch/pinkie
execute if entity @s[tag=grab] run function medabots_server:animations/crazy_hand/grab/pinkie
execute if entity @s[tag=grab_success] run function medabots_server:animations/crazy_hand/grab_success/pinkie
execute if entity @s[tag=jet] run function medabots_server:animations/crazy_hand/jet/pinkie
execute if entity @s[tag=ram] run function medabots_server:animations/crazy_hand/ram/pinkie
execute if entity @s[tag=punch] run function medabots_server:animations/crazy_hand/punch/pinkie
execute if entity @s[tag=fake_out] run function medabots_server:animations/crazy_hand/fake_out/pinkie
execute if entity @s[tag=slap] run function medabots_server:animations/crazy_hand/slap/pinkie
execute if entity @s[tag=sweep] run function medabots_server:animations/crazy_hand/sweep/pinkie
execute if entity @s[tag=crush] run function medabots_server:animations/crazy_hand/crush/pinkie
execute if entity @s[tag=poke] run function medabots_server:animations/crazy_hand/poke/pinkie
execute if entity @s[tag=lasers] run function medabots_server:animations/crazy_hand/lasers/pinkie
execute if entity @s[tag=crawl,tag=!crawl_stop] run function medabots_server:animations/crazy_hand/crawl/pinkie
execute if entity @s[tag=crawl_stop] run function medabots_server:animations/crazy_hand/crawl_stop/pinkie
execute if entity @s[tag=bombs] run function medabots_server:animations/crazy_hand/bombs/pinkie
execute if entity @s[tag=spasm] run function medabots_server:animations/crazy_hand/spasm/pinkie