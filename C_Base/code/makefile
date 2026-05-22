all:	
	clang -target arm-linux-android21 .\hello32learn.s -o helloArmLearn
	adb push helloArmLearn /data/local/tmp/helloArmLearn
	adb shell chmod +x /data/local/tmp/helloArmLearn
	adb shell ./data/local/tmp/helloArmLearn