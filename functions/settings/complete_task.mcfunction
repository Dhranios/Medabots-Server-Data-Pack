# Unused task numbers: 4, 11, 12, 14

# Bug Testers

# Moderators
execute if entity @s[scores={TaskCheck=5}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Palace of Twilight, Egg Engines and Final Destinations needs building."]}
execute if entity @s[scores={TaskCheck=5}] run data merge block -292 18 -60 {auto:0b}
execute if entity @s[scores={TaskCheck=6}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Mt. Battle's mountain look needs (a lot of) work."]}
execute if entity @s[scores={TaskCheck=6}] run data merge block -292 18 -59 {auto:0b}

# Personal
# FVbico
execute if entity @s[scores={TaskCheck=7}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Stage versions need implementing."]}
execute if entity @s[scores={TaskCheck=7}] run data merge block -291 18 -60 {auto:0b}
execute if entity @s[scores={TaskCheck=8}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Update the design of Park and Paradise A and B, and all C, D, E and F stages."]}
execute if entity @s[scores={TaskCheck=8}] run data merge block -291 18 -59 {auto:0b}
execute if entity @s[scores={TaskCheck=9}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Re-create Ricco Harbor."]}
execute if entity @s[scores={TaskCheck=9}] run data merge block -291 18 -58 {auto:0b}
execute if entity @s[scores={TaskCheck=10}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Make the Press Wall animation smooth."]}
execute if entity @s[scores={TaskCheck=10}] run data merge block -291 18 -57 {auto:0b}
execute if entity @s[scores={TaskCheck=3}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Add all dialogs."]}
execute if entity @s[scores={TaskCheck=3}] run data merge block -291 18 -56 {auto:0b}
execute if entity @s[scores={TaskCheck=2}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"CPUs need custom AI."]}
execute if entity @s[scores={TaskCheck=2}] run data merge block -291 18 -55 {auto:0b}
# UltimateGold
execute if entity @s[scores={TaskCheck=13}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Tower of valnir needs rebuilding for spectator areas."]}
execute if entity @s[scores={TaskCheck=13}] run data merge block -290 18 -60 {auto:0b}
# Skydier
execute if entity @s[scores={TaskCheck=16}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"A list of all enemy medabots' medals needs to be shared."]}
execute if entity @s[scores={TaskCheck=16}] run data merge block -288 18 -60 {auto:0b}
execute if entity @s[scores={TaskCheck=15}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"D stages second go version data needs to be shared."]}
execute if entity @s[scores={TaskCheck=15}] run data merge block -289 18 -59 {auto:0b}

# Coop

scoreboard players reset @s TaskCheck