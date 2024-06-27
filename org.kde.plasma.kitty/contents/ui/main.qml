import QtQuick 2.15
import QtQuick.Layouts
import org.kde.plasma.plasmoid

PlasmoidItem {
    property int animationWidth: animation.width
    property int animationHeight: animation.height

    Layout.minimumWidth: animation.width
    Layout.minimumHeight: animation.height

    AnimatedImage { 
        id: animation
        source: "animation.gif"
        width: parent.width
        height: parent.height

        // pause animation.gif on click
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: animation.paused = !animation.paused   
        }
    }
}
