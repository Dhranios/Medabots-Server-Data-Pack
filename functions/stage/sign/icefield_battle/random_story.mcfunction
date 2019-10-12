data merge block -2000 52 -632 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/icefield_battle/enter"}}'}
setblock -2000 53 -634 minecraft:red_wool

execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_spyke=true,vs_spyke_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_gillgirl=true,vs_gillgirl_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={squidguts_jammy=true,squidguts_jammy_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_karin=true,vs_karin_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle

execute unless entity @s[advancements={medabots_server:story_progression/infinity={vs_spyke=true,vs_spyke_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_gillgirl=true,vs_gillgirl_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={squidguts_jammy=true,squidguts_jammy_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_karin=true,vs_karin_battle=false}}] run function medabots_server:stage/sign/icefield_battle/random