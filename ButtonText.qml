import QtQuick
import QtQuick.Layouts

Text {
	id: text
	property alias text: text.text
	font.pointSize: 20
	color: "white"
	anchors.fill: parent
	horizontalAlignment: Text.AlignHCenter
	verticalAlignment: Text.AlignVCenter
}
