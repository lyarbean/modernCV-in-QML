import QtQuick 2.4

// entries is a list of [name, description, rich, detail]
// detail is an index to an ObjectModel
ListView {
    id: entriesView
    property alias entries: entriesView.model
    property real leftWidth: 0
    property string name: ""
    property var details
    //Component.onCompleted: height = childrenRect.height
    height: childrenRect.height
    width: 700
    spacing: 15
    clip: true
    header: Row {
        spacing: 32
        Rectangle {
            width: leftWidth
            height: 10
            color: "orange"
            anchors.verticalCenter: nameText.verticalCenter
        }
        Text {
            id: nameText
            text: name
            color: "orange"
            font.pointSize: 16
        }
    }
    delegate:
    Row {
        spacing: 32
        width: parent.width
        Text {
            width: leftWidth;
            text: model.name;
            horizontalAlignment: Text.AlignRight
            wrapMode: Text.Wrap
            font.pointSize: 12
        }
        Column{
            spacing: 10
            Text {
                text: model.description;
                horizontalAlignment: Text.AlignLeft
                wrapMode: Text.Wrap
                font.pointSize: 12
            }
            // TODO add ListView for detail
            ListView {
                clip: true
                width: parent.width
                height: childrenRect.height
                model: details[detail]
             }
        }
    }
}
