execute store result score #bb.mp.total_player bb.variable if entity @a
execute store result score #bb.mp.fake_player bb.variable if entity @e[tag=boomber.morpheus.fake_player]
execute store result score #bb.mp.sleep_player bb.variable if entity @e[tag=boomber.morpheus.is_sleep]
scoreboard players operation #bb.mp.total_player bb.variable += #bb.mp.fake_player bb.variable

scoreboard players operation #bb.mp.min_percentage bb.calculation = #minimum_percentage bb.gamerule

scoreboard players operation #bb.mp.player_needed bb.calculation = #bb.mp.total_player bb.variable
scoreboard players operation #bb.mp.player_needed bb.calculation *= #bb.mp.min_percentage bb.calculation
scoreboard players operation #bb.mp.player_needed bb.calculation /= #100 bb.variable

scoreboard players operation #bb.mp.mod_player bb.calculation = #bb.mp.total_player bb.variable
scoreboard players operation #bb.mp.mod_player bb.calculation *= #bb.mp.min_percentage bb.calculation
scoreboard players operation #bb.mp.mod_player bb.calculation %= #100 bb.variable

execute if score #bb.mp.mod_player bb.calculation matches 1.. run scoreboard players operation #bb.mp.player_needed bb.calculation += #1 bb.variable

scoreboard players operation #bb.mp.player_needed bb.variable = #bb.mp.player_needed bb.calculation

scoreboard players operation #bb.mp.sleep_percent bb.variable = #bb.mp.sleep_player bb.variable
scoreboard players operation #bb.mp.sleep_percent bb.variable *= #100 bb.variable
scoreboard players operation #bb.mp.sleep_percent bb.variable /= #bb.mp.total_player bb.variable

scoreboard players operation #bb.mp.percent_needed bb.variable = #bb.mp.sleep_player bb.variable
scoreboard players operation #bb.mp.percent_needed bb.variable *= #100 bb.variable
scoreboard players operation #bb.mp.percent_needed bb.variable /= #bb.mp.player_needed bb.variable

scoreboard players operation #bb.mp.sleeep_player-1 bb.variable = #bb.mp.sleeep_player bb.variable
scoreboard players operation #bb.mp.sleeep_player-1 bb.variable -= #1 bb.variable