data merge block -2000 52 -632 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/icefield_battle/enter"}}'}
setblock -2000 53 -634 minecraft:red_wool

execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_squidguts=true,vs_squidguts_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_seaslug=true,vs_seaslug_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={motivated_fight=true,motivated_fight_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_screws=true,vs_screws_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_jaxy=true,vs_jaxy_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle
execute if entity @s[scores={KillStreak=1}] run function medabots_server:stage/try/ruins_battle/story_battle
execute if entity @s[scores={KillStreak=2}] run function medabots_server:stage/try/ruins_battle/story_battle
execute if entity @s[scores={KillStreak=3}] run function medabots_server:stage/try/ruins_battle/story_battle

execute unless entity @s[advancements={medabots_server:story_progression/infinity={vs_squidguts=true,vs_squidguts_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_seaslug=true,vs_seaslug_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={motivated_fight=true,motivated_fight_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_screws=true,vs_screws_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_jaxy=true,vs_jaxy_battle=false}}] unless entity @s[scores={KillStreak=1..3}] run function medabots_server:stage/sign/ruins_battle/random