VERILOG = iverilog		
TARGET = test.vcd
TARGET_TMP = test.vvp

$(TARGET) : test.vvp
	vvp test.vvp

test.vvp: BCD2Dec_tb.v BCD2Dec.v
	$(VERILOG) -o test.vvp BCD2Dec_tb.v BCD2Dec.v

clean:
	rm $(TARGET)
	rm $(TARGET_TMP)
