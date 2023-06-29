import QtQuick 2.0

Item {
    width: animation.width; height: animation.height

    AnimatedImage { id: animation; source: "animation.gif" }
}
