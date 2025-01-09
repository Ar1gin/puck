import Puck
import Qt.labs.platform
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

// May god forgive me for the amount of copypasta I made

ApplicationWindow {
	id: window
	width: 1000; height: 250
	color: "#80000000"
	title: "PUCK Virtual Keyboard"
	visible: true
	SystemTrayIcon {
		visible: true
		icon.mask: true
		icon.source: "qrc:///icon.png"
		tooltip: window.title
		onActivated: () => {
			if (window.visibility == Window.Hidden) {
				window.showNormal()
			} else {
				window.hide()
			}
		}
	}
	Keyboard {
		id: keyboard
		readonly property int ctrl: 65536
		readonly property int shift: 131072
		readonly property int alt: 262144
		readonly property int meta: 524288
		readonly property int ctrlshift: ctrl|shift
		property int mod: 0
		property bool caps: false
		property bool fn: false
	}
	ColumnLayout {
		anchors.fill: parent
		spacing: 2
		RowLayout {
			visible: !keyboard.fn
			Layout.fillHeight: true
			spacing: 2
			KeyboardButton { keys: [ 1, 0, 41, 0, 0 ]; chars: [ "Esc", "", "`", "~", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|16, 0, 2, 0, 0 ]; chars: [ "q", "", "1", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|17, 0, 3, 0, 0 ]; chars: [ "w", "", "2", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|18, 0, 4, 0, 0 ]; chars: [ "e", "", "3", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|19, 0, 5, 0, 0 ]; chars: [ "r", "", "4", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|20, 0, 6, 0, 0 ]; chars: [ "t", "", "5", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|21, 0, 7, 0, 0 ]; chars: [ "y", "", "6", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|22, 0, 8, 0, 0 ]; chars: [ "u", "", "7", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|23, 0, 9, 0, 0 ]; chars: [ "i", "", "8", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|24, 0, 10, 0, 0 ]; chars: [ "o", "", "9", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|25, 0, 11, 0, 0 ]; chars: [ "p", "", "0", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|16, 0, 2, 0, 0 ]; chars: [ "Q", "", "1", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|17, 0, 3, 0, 0 ]; chars: [ "W", "", "2", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|18, 0, 4, 0, 0 ]; chars: [ "E", "", "3", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|19, 0, 5, 0, 0 ]; chars: [ "R", "", "4", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|20, 0, 6, 0, 0 ]; chars: [ "T", "", "5", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|21, 0, 7, 0, 0 ]; chars: [ "Y", "", "6", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|22, 0, 8, 0, 0 ]; chars: [ "U", "", "7", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|23, 0, 9, 0, 0 ]; chars: [ "I", "", "8", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|24, 0, 10, 0, 0 ]; chars: [ "O", "", "9", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|25, 0, 11, 0, 0 ]; chars: [ "P", "", "0", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.shift+10, 12, keyboard.shift+13, 0, keyboard.shift+26 ]; chars: [ "(", "-", "+", "", "{"]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.shift+11, keyboard.shift+12, 13, 0, keyboard.shift+27 ]; chars: [ ")", "_", "=", "", "}"]; keyboard: keyboard }
			KeyboardButton { keys: [ 53, 0, keyboard.shift+43, 0, 0 ]; chars: [ "/", "", "|", "", ""]; keyboard: keyboard }
		}
		RowLayout {
			visible: !keyboard.fn
			spacing: 2
			KeyboardButton {
				keys: [ keyboard.mod|15, 0, keyboard.shift+15, 0, 0 ]
				chars: [ "Tab", "", "BTab", "", ""]
				keyboard: keyboard
				Layout.preferredWidth: parent.width * 0.10
				nofill: true
			}
			KeyboardButton { keys: [ keyboard.mod|30, 0, keyboard.shift+2, 0, 0 ]; chars: [ "a", "", "!", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|31, 0, keyboard.shift+3, 0, 0 ]; chars: [ "s", "", "@", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|32, 0, keyboard.shift+4, 0, 0 ]; chars: [ "d", "", "#", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|33, 0, keyboard.shift+5, 0, 0 ]; chars: [ "f", "", "$", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|34, 0, keyboard.shift+6, 0, 0 ]; chars: [ "g", "", "%", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|35, 0, keyboard.shift+7, 0, 0 ]; chars: [ "h", "", "^", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|36, 0, keyboard.shift+8, 0, 0 ]; chars: [ "j", "", "&", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|37, 0, keyboard.shift+9, 0, 0 ]; chars: [ "k", "", "*", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|38, 26, 27, 0, 0 ]; chars: [ "l", "[", "]", "", ""]; keyboard: keyboard; visible: !keyboard.caps}
			KeyboardButton { keys: [ keyboard.mod|30, 0, keyboard.shift+2, 0, 0 ]; chars: [ "A", "", "!", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|31, 0, keyboard.shift+3, 0, 0 ]; chars: [ "S", "", "@", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|32, 0, keyboard.shift+4, 0, 0 ]; chars: [ "D", "", "#", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|33, 0, keyboard.shift+5, 0, 0 ]; chars: [ "F", "", "$", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|34, 0, keyboard.shift+6, 0, 0 ]; chars: [ "G", "", "%", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|35, 0, keyboard.shift+7, 0, 0 ]; chars: [ "H", "", "^", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|36, 0, keyboard.shift+8, 0, 0 ]; chars: [ "J", "", "&", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|37, 0, keyboard.shift+9, 0, 0 ]; chars: [ "K", "", "*", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|38, 26, 27, 0, 0 ]; chars: [ "L", "[", "]", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ 39, 0, keyboard.shift+39, 0, 0 ]; chars: [ ";", "", ":", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 40, 0, keyboard.shift+40, 0, 0 ]; chars: [ "'", "", "\"", "", ""]; keyboard: keyboard }
			KeyboardButton {
				keys: [ keyboard.mod|14, 0, keyboard.mod|111, 0, 0 ];
				chars: [ "󰭜", "", "Del", "", ""];
				keyboard: keyboard
				Layout.preferredWidth: parent.width * 0.10
				nofill: true
			}
		}
		RowLayout {
			visible: !keyboard.fn
			spacing: 2
			Item {
				Layout.preferredWidth: parent.width * 0.14
				Layout.fillHeight: true
				Button {
					anchors.fill: parent
					font.pointSize: 20
					flat: true
					onPressed: () => {
						keyboard.caps = true;
						keyboard.mod |= keyboard.shift;
					}
					onReleased: () => {
						keyboard.caps = false;
						keyboard.mod &= ~keyboard.shift;
					}
					ButtonText {
						text: "Shift"
					}
				}
			}
			KeyboardButton { keys: [ keyboard.mod|44, 0, 0, 0, 0 ]; chars: [ "z", "", "", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|45, 0, 0, 0, 0 ]; chars: [ "x", "", "", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|46, 0, 0, 0, 0 ]; chars: [ "c", "", "", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|47, 0, 0, 0, 0 ]; chars: [ "v", "", "", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|48, 0, 0, 0, 0 ]; chars: [ "b", "", "", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|49, 0, 0, 0, 0 ]; chars: [ "n", "", "", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|50, 0, 0, 0, 0 ]; chars: [ "m", "", "", "", ""]; keyboard: keyboard; visible: !keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|44, 0, 0, 0, 0 ]; chars: [ "Z", "", "", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|45, 0, 0, 0, 0 ]; chars: [ "X", "", "", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|46, 0, 0, 0, 0 ]; chars: [ "C", "", "", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|47, 0, 0, 0, 0 ]; chars: [ "V", "", "", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|48, 0, 0, 0, 0 ]; chars: [ "B", "", "", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|49, 0, 0, 0, 0 ]; chars: [ "N", "", "", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ keyboard.mod|50, 0, 0, 0, 0 ]; chars: [ "M", "", "", "", ""]; keyboard: keyboard; visible: keyboard.caps }
			KeyboardButton { keys: [ 51, 0, keyboard.shift+51, keyboard.ctrl+51, 0 ]; chars: [ ",", "", "<", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 52, 0, keyboard.shift+52, keyboard.ctrl+52, 0 ]; chars: [ ".", "", ">", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.shift+53, 0, 43, 0, 0 ]; chars: [ "?", "", "\\", "", ""]; keyboard: keyboard }
			KeyboardButton {
				keys: [ keyboard.mod|28, 0, 0, 0, 0 ]
				chars: [ "Enter", "", "", "", ""]
				keyboard: keyboard
				Layout.preferredWidth: parent.width * 0.14
				nofill: true
			}
		}
		RowLayout {
			visible: keyboard.fn
			spacing: 2
			KeyboardButton { keys: [ keyboard.mod|59, 0, 0, 0, 0 ]; chars: [ "F1", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|60, 0, 0, 0, 0 ]; chars: [ "F2", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|61, 0, 0, 0, 0 ]; chars: [ "F3", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|62, 0, 0, 0, 0 ]; chars: [ "F4", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|63, 0, 0, 0, 0 ]; chars: [ "F5", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|64, 0, 0, 0, 0 ]; chars: [ "F6", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|65, 0, 0, 0, 0 ]; chars: [ "F7", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|66, 0, 0, 0, 0 ]; chars: [ "F8", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|67, 0, 0, 0, 0 ]; chars: [ "F9", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|68, 0, 0, 0, 0 ]; chars: [ "F10", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|87, 0, 0, 0, 0 ]; chars: [ "F11", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|88, 0, 0, 0, 0 ]; chars: [ "F12", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 210, 0, 0, 0, 0 ]; chars: [ "PS", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ 113, 0, 0, 0, 0 ]; chars: [ "MT", "", "", "", ""]; keyboard: keyboard }
		}
		RowLayout {
			visible: keyboard.fn
			spacing: 2
			Layout.preferredHeight: parent.height * 0.5 - 2
			Layout.fillHeight: false
			ArrowScroller {
				keyboard: keyboard
				Layout.fillHeight: true
				Layout.fillWidth: true
			}
		}
		RowLayout {
			spacing: 2
			Item {
				Layout.fillWidth: true
				Layout.fillHeight: true
				Button {
					anchors.fill: parent
					flat: true
					font.pointSize: 20
					onPressed: () => {
						keyboard.fn = true
					}
					onReleased: () => {
						keyboard.fn = false
					}
					ButtonText {
						text: "Fn"
					}
				}
			}
			Item {
				Layout.fillWidth: true
				Layout.fillHeight: true
				Button {
					anchors.fill: parent
					font.pointSize: 20
					flat: true
					onPressed: () => {
						keyboard.mod |= keyboard.meta;
					}
					onReleased: () => {
						keyboard.mod &= ~keyboard.meta;
					}
					ButtonText {
						text: "Mod"
					}
				}
			}
			Item {
				Layout.fillWidth: true
				Layout.fillHeight: true
				Button {
					anchors.fill: parent
					font.pointSize: 20
					flat: true
					onPressed: () => {
						keyboard.mod |= keyboard.ctrl;
					}
					onReleased: () => {
						keyboard.mod &= ~keyboard.ctrl;
					}
					ButtonText {
						text: "Ctr"
					}
				}
			}
			Item {
				Layout.fillWidth: true
				Layout.fillHeight: true
				Button {
					anchors.fill: parent
					font.pointSize: 20
					flat: true
					onPressed: () => {
						keyboard.mod |= keyboard.alt;
					}
					onReleased: () => {
						keyboard.mod &= ~keyboard.alt;
					}
					ButtonText {
						text: "Alt"
					}
				}
			}
			KeyboardButton {
				keys: [ keyboard.mod|57, 0, 0, 0, 0 ]
				chars: [ "󱁐", "", "", "", ""]
				keyboard: keyboard
				Layout.preferredWidth: parent.width * 0.4
				nofill: true
			}
			KeyboardButton { keys: [ keyboard.mod|105, 0, 0, 0, 0 ]; chars: [ "⬅️", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|108, 0, 0, 0, 0 ]; chars: [ "⬇️", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|103, 0, 0, 0, 0 ]; chars: [ "⬆️", "", "", "", ""]; keyboard: keyboard }
			KeyboardButton { keys: [ keyboard.mod|106, 0, 0, 0, 0 ]; chars: [ "➡️", "", "", "", ""]; keyboard: keyboard }
		}
	}
}
