onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned -radixshowbase 0 /generic_adder_tb/uut/a
add wave -noupdate -radix unsigned -radixshowbase 0 /generic_adder_tb/uut/b
add wave -noupdate -radix unsigned -radixshowbase 0 /generic_adder_tb/uut/cin
add wave -noupdate -radix unsigned -radixshowbase 0 /generic_adder_tb/uut/sum
add wave -noupdate -radix unsigned /generic_adder_tb/uut/cout
add wave -noupdate -radix unsigned -radixshowbase 0 /generic_adder_tb/uut/sum_temp
add wave -noupdate -radix unsigned -radixshowbase 0 /generic_adder_tb/uut/cin_guard
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 177
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {5999 ns} {6001 ns}
