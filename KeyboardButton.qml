import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
	id: item
	Layout.fillHeight: true
	property var keys
	property var chars
	property var keyboard
	property var container
	default property var nofill: false
	Layout.fillWidth: !nofill;
	Button {
		anchors.fill: parent
		id: button
		flat: true
		Text {
			anchors.fill: parent
			text: chars[0]
			font.pointSize: 20
			color: "white"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: Text.AlignVCenter
		}
		GridLayout {
			anchors.fill: parent
			anchors.margins: 6
			columns: 2
			Text {
				text: chars[1]
				color: "white"
				Layout.fillWidth: true
				Layout.fillHeight: true
				horizontalAlignment: Text.AlignLeft
				verticalAlignment: Text.AlignTop
			}
			Text {
				text: chars[2]
				color: "white"
				Layout.fillWidth: true
				Layout.fillHeight: true
				horizontalAlignment: Text.AlignRight
				verticalAlignment: Text.AlignTop
			}
			Text {
				text: chars[3]
				color: "white"
				Layout.fillWidth: true
				Layout.fillHeight: true
				horizontalAlignment: Text.AlignLeft
				verticalAlignment: Text.AlignBottom
			}
			Text {
				text: chars[4]
				color: "white"
				Layout.fillWidth: true
				Layout.fillHeight: true
				horizontalAlignment: Text.AlignRight
				verticalAlignment: Text.AlignBottom
			}
		}
		MultiPointTouchArea {
			id: area
			anchors.fill: parent
			mouseEnabled: true
			onReleased: (touchPoints) => {
				for(var i = 0; i < touchPoints.length; i++) {
					var dx = touchPoints[i].x - touchPoints[i].startX
					var dy = touchPoints[i].y - touchPoints[i].startY
					if(dx*dx + dy*dy > 32*32) {
						if(dx > 0) {
							if(dy > 0) {
								item.keyboard.buttonClicked(keys[4])
							} else {
								item.keyboard.buttonClicked(keys[2])
							}
						} else {
							if(dy > 0) {
								item.keyboard.buttonClicked(keys[3])
							} else {
								item.keyboard.buttonClicked(keys[1])
							}
						}
					} else {
						item.keyboard.buttonClicked(keys[0])
					}
				}
			}
		}
	}
}
