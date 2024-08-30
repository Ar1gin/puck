import Puck
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

// May god forgive me for the amount of copypasta I made

ApplicationWindow {
	id: root
	width: 1000; height: 250
	color: "#40000000"
	title: "PUCK Virtual Keyboard"
	visible: true
	Keyboard {
		id: keyboard
		readonly property int ctrl: 65536
		readonly property int shift: 131072
		readonly property int ctrlshift: ctrl+shift
		property bool caps: false
	}
	ColumnLayout {
		anchors.fill: parent
		spacing: 2
		RowLayout {
			Layout.fillHeight: true
			spacing: 2
			KeyboardButton { keys: [ 1, 0, 41, keyboard.ctrl+41, 0 ]; chars: [ "Esc", "", "`", "~", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 16, 0, 2, keyboard.ctrl+16, 0 ]; chars: [ "q", "", "1", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 17, 0, 3, keyboard.ctrl+17, 0 ]; chars: [ "w", "", "2", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 18, 0, 4, keyboard.ctrl+18, 0 ]; chars: [ "e", "", "3", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 19, 0, 5, keyboard.ctrl+19, 0 ]; chars: [ "r", "", "4", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 20, 0, 6, keyboard.ctrl+20, 0 ]; chars: [ "t", "", "5", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 21, 0, 7, keyboard.ctrl+21, 0 ]; chars: [ "y", "", "6", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 22, 0, 8, keyboard.ctrl+22, 0 ]; chars: [ "u", "", "7", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 23, 0, 9, keyboard.ctrl+23, 0 ]; chars: [ "i", "", "8", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 24, 0, 10, keyboard.ctrl+24, 0 ]; chars: [ "o", "", "9", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 25, 0, 11, keyboard.ctrl+25, 0 ]; chars: [ "p", "", "0", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+16, 0, 2, keyboard.ctrlshift+16, 0 ]; chars: [ "Q", "", "1", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+17, 0, 3, keyboard.ctrlshift+17, 0 ]; chars: [ "W", "", "2", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+18, 0, 4, keyboard.ctrlshift+18, 0 ]; chars: [ "E", "", "3", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+19, 0, 5, keyboard.ctrlshift+19, 0 ]; chars: [ "R", "", "4", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+20, 0, 6, keyboard.ctrlshift+20, 0 ]; chars: [ "T", "", "5", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+21, 0, 7, keyboard.ctrlshift+21, 0 ]; chars: [ "Y", "", "6", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+22, 0, 8, keyboard.ctrlshift+22, 0 ]; chars: [ "U", "", "7", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+23, 0, 9, keyboard.ctrlshift+23, 0 ]; chars: [ "I", "", "8", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+24, 0, 10, keyboard.ctrlshift+24, 0 ]; chars: [ "O", "", "9", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+25, 0, 11, keyboard.ctrlshift+25, 0 ]; chars: [ "P", "", "0", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+10, 12, keyboard.shift+13, 0, keyboard.shift+26 ]; chars: [ "(", "-", "+", "", "{"]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.shift+11, keyboard.shift+12, 13, 0, keyboard.shift+27 ]; chars: [ ")", "_", "=", "", "}"]; keyboard: keyboard }
			KeyboardButton { keys: [ 53, 0, keyboard.shift+43, 0, 0 ]; chars: [ "/", "", "|", "", ""]; keyboard: keyboard }
		}
		RowLayout {
			spacing: 2
			KeyboardButton {
				keys: [ 15, 0, 0, 0, 0 ]
				chars: [ "Tab", "", "", "", ""]
				keyboard: keyboard
				Layout.preferredWidth: parent.width * 0.10
				nofill: true
			}
			KeyboardButton { keys: [ 30, 0, keyboard.shift+2, keyboard.ctrl+30, 0 ]; chars: [ "a", "", "!", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 31, 0, keyboard.shift+3, keyboard.ctrl+31, 0 ]; chars: [ "s", "", "@", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 32, 0, keyboard.shift+4, keyboard.ctrl+32, 0 ]; chars: [ "d", "", "#", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 33, 0, keyboard.shift+5, keyboard.ctrl+33, 0 ]; chars: [ "f", "", "$", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 34, 0, keyboard.shift+6, keyboard.ctrl+34, 0 ]; chars: [ "g", "", "%", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 35, 0, keyboard.shift+7, keyboard.ctrl+35, 0 ]; chars: [ "h", "", "^", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 36, 0, keyboard.shift+8, keyboard.ctrl+36, 0 ]; chars: [ "j", "", "&", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 37, 0, keyboard.shift+9, keyboard.ctrl+37, 0 ]; chars: [ "k", "", "*", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 38, 26, 27, 0, 0 ]; chars: [ "l", "[", "]", "^", ""]; keyboard: keyboard; visible: !keyboard.caps}
			KeyboardButton { keys: [ keyboard.shift+30, 0, keyboard.shift+2, keyboard.ctrlshift+30, 0 ]; chars: [ "A", "", "!", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+31, 0, keyboard.shift+3, keyboard.ctrlshift+31, 0 ]; chars: [ "S", "", "@", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+32, 0, keyboard.shift+4, keyboard.ctrlshift+32, 0 ]; chars: [ "D", "", "#", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+33, 0, keyboard.shift+5, keyboard.ctrlshift+33, 0 ]; chars: [ "F", "", "$", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+34, 0, keyboard.shift+6, keyboard.ctrlshift+34, 0 ]; chars: [ "G", "", "%", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+35, 0, keyboard.shift+7, keyboard.ctrlshift+35, 0 ]; chars: [ "H", "", "^", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+36, 0, keyboard.shift+8, keyboard.ctrlshift+36, 0 ]; chars: [ "J", "", "&", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+37, 0, keyboard.shift+9, keyboard.ctrlshift+37, 0 ]; chars: [ "K", "", "*", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+38, 26, 27, 0, 0 ]; chars: [ "L", "[", "]", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ 39, 0, keyboard.shift+39, 0, 0 ]; chars: [ ";", "", ":", "^", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 40, 0, keyboard.shift+40, 0, 0 ]; chars: [ "'", "", "\"", "^", ""]; keyboard: keyboard }
			KeyboardButton {
				keys: [ 14, 0, 111, 0, 0 ];
				chars: [ "󰭜", "", "Del", "", ""];
				keyboard: keyboard
				Layout.preferredWidth: parent.width * 0.10
				nofill: true
			}
		}
		RowLayout {
			spacing: 2
			Item {
				Layout.preferredWidth: parent.width * 0.14
				Layout.fillHeight: true
				Button {
					anchors.fill: parent
					font.pointSize: 20
					flat: true
					text: "Shift"
					onPressed: keyboard.caps = true;
					onReleased: keyboard.caps = false;
				}
			}
			KeyboardButton { keys: [ 44, 0, 0, keyboard.ctrl+44, 0 ]; chars: [ "z", "", "", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 45, 0, 0, keyboard.ctrl+45, 0 ]; chars: [ "x", "", "", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 46, 0, 0, keyboard.ctrl+46, 0 ]; chars: [ "c", "", "", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 47, 0, 0, keyboard.ctrl+47, 0 ]; chars: [ "v", "", "", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 48, 0, 0, keyboard.ctrl+48, 0 ]; chars: [ "b", "", "", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 49, 0, 0, keyboard.ctrl+49, 0 ]; chars: [ "n", "", "", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ 50, 0, 0, keyboard.ctrl+50, 0 ]; chars: [ "m", "", "", "^", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+44, 0, 0, keyboard.ctrlshift+44, 0 ]; chars: [ "Z", "", "", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+45, 0, 0, keyboard.ctrlshift+45, 0 ]; chars: [ "X", "", "", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+46, 0, 0, keyboard.ctrlshift+46, 0 ]; chars: [ "C", "", "", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+47, 0, 0, keyboard.ctrlshift+47, 0 ]; chars: [ "V", "", "", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+48, 0, 0, keyboard.ctrlshift+48, 0 ]; chars: [ "B", "", "", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+49, 0, 0, keyboard.ctrlshift+49, 0 ]; chars: [ "N", "", "", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+50, 0, 0, keyboard.ctrlshift+50, 0 ]; chars: [ "M", "", "", "^", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ 51, 0, keyboard.shift+51, keyboard.ctrl+51, 0 ]; chars: [ ",", "", "<", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 52, 0, keyboard.shift+52, keyboard.ctrl+52, 0 ]; chars: [ ".", "", ">", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.shift+53, 0, 43, 0, 0 ]; chars: [ "?", "", "\\", "", ""]; keyboard: keyboard }
			KeyboardButton {
				keys: [ 28, 0, 0, 0, 0 ]
				chars: [ "Enter", "", "", "", ""]
				keyboard: keyboard
				Layout.preferredWidth: parent.width * 0.14
				nofill: true
			}
		}
		RowLayout {
			spacing: 2
			KeyboardButton { keys: [ 0, 0, 0, 0, 0 ]; chars: [ "?", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 0, 0, 0, 0, 0 ]; chars: [ "?", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 0, 0, 0, 0, 0 ]; chars: [ "?", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 0, 0, 0, 0, 0 ]; chars: [ "?", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton {
				keys: [ 57, 0, 0, 0, 0 ]
				chars: [ "󱁐", "", "", "", ""]
				keyboard: keyboard
				Layout.preferredWidth: parent.width * 0.4
				nofill: true
			}
			KeyboardButton { keys: [ 0, 0, 0, 0, 0 ]; chars: [ "?", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 0, 0, 0, 0, 0 ]; chars: [ "?", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 0, 0, 0, 0, 0 ]; chars: [ "?", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 0, 0, 0, 0, 0 ]; chars: [ "?", "", "", "", ""]; keyboard: keyboard }
		}
	}
}
