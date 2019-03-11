scoreboard players set #bb.mp.sleep_timer bb.variable 0
scoreboard players operation #bb.mp.time bb.calculation = #bb.mp.wakeup_time bb.variable
scoreboard players operation #bb.mp.time bb.calculation -= #bb.mp.time bb.variable

execute if score #bb.mp.time bb.calculation matches ..-1 run scoreboard players operation #bb.mp.temp_time bb.calculation = #1 bb.variable
execute if score #bb.mp.time bb.calculation matches ..-1 run scoreboard players operation #bb.mp.temp_time bb.calculation += #bb.mp.time bb.calculation
execute if score #bb.mp.time bb.calculation matches ..-1 run scoreboard players operation #bb.mp.temp_time bb.calculation += #bb.mp.wakeup_time bb.variable
execute if score #bb.mp.time bb.calculation matches ..-1 run scoreboard players operation #bb.mp.time bb.calculation = #bb.mp.temp_time bb.calculation

function boomber:morpheus/event/time_machine/time_calculation
