import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.0 as QtControls

import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.extras 2.0 as PlasmaExtras

Item {
    width: animation.width; height: animation.height

    AnimatedImage { id: animation; source: "animation.gif" }

    Rectangle {
        property int frames: animation.frameCount

        width: 4; height: 8
        x: (animation.width - width) * animation.currentFrame / frames
        y: animation.height
        color: "red"
    }
 
}
