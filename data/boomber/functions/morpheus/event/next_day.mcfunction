scoreboard players set #bb.mp.time bb.variable -1
scoreboard players operation #bb.mp.cooldown bb.variable = #morpheus_cooldown bb.gamerule 

weather clear 1200
tellraw @a [{"text":"The sun is rising...","color":"yellow"}]
