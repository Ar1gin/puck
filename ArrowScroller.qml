import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

MultiPointTouchArea {
	id: area
	mouseEnabled: true
	property var keyboard
	property int distance: 32
	property int sub: 28
	property var buttons: [105, 108, 103, 106]
	property int dx: 0
	property int dy: 0
	onUpdated: (touchPoints) => {
		for (var i = 0; i < touchPoints.length; i++) {
			area.dx += touchPoints[i].x - touchPoints[i].previousX
			area.dy += touchPoints[i].y - touchPoints[i].previousY
		}
		if (area.dx > area.distance) {
			area.dx -= area.sub
			keyboard.buttonClicked(area.buttons[3])
		}
		if (area.dx < -area.distance) {
			area.dx += area.sub
			keyboard.buttonClicked(area.buttons[0])
		}
		if (area.dy > area.distance) {
			area.dy -= area.sub
			keyboard.buttonClicked(area.buttons[1])
		}
		if (area.dy < -area.distance) {
			area.dy += area.sub
			keyboard.buttonClicked(area.buttons[2])
		}
	}
	onReleased: {
		area.dx = 0
		area.dy = 0
	}
}
