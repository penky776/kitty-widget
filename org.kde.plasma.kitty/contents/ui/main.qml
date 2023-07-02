import QtQuick 2.0
import QtQuick.Layouts 1.0
import org.kde.plasma.plasmoid 2.0

Item {
    property int animationWidth: animation.width
    property int animationHeight: animation.height
    
    Layout.minimumWidth: animation.width
    Layout.minimumHeight: animation.height

    AnimatedImage { 
        id: animation; source: "animation.gif" 
        width: parent.width 
        height: parent.height

        // pause animation.gif on click
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: parent.paused = !parent.paused   
        }
    }

}
