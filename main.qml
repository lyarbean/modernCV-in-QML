import QtQuick 2.4
import QtQml.Models 2.1
import QtQuick.Window 2.2

Window {
    id: root
    width: 1149
    height: 1680
    visible: true
    Flickable {
        contentWidth: 1149
        contentHeight: 1680
        Rectangle {
            MouseArea {
                anchors.fill: parent
                drag.target: parent
                drag.axis: Drag.YAxis
                drag.minimumY: -parent.height / 2
                drag.maximumY: parent.height / 2
            }
            width: 1149
            height: 1680
            Section {
                x : 100
                ObjectModel {
                    id: itemModel0
                    Rectangle { height: 30; width: 80; color: "red" }
                    Rectangle { height: 30; width: 80; color: "green" }
                    Rectangle { height: 30; width: 80; color: "blue" }
                    Rectangle { height: 30; width: 80; color: "blue" }
                }
                ObjectModel {
                    id: itemModel1
                    Rectangle { height: 30; width: 80; color: "red" }
                    Rectangle { height: 30; width: 80; color: "green" }
                    Rectangle { height: 30; width: 80; color: "blue" }
                }
                ObjectModel {
                    id: itemModel2
                    Rectangle { height: 30; width: 80; color: "red" }
                    Rectangle { height: 30; width: 80; color: "green" }
                    Rectangle { height: 30; width: 80; color: "blue" }
                }
                details: [itemModel0, itemModel1, itemModel2]
                width: 1024
                entries: ListModel {
                    ListElement{
                        name:"Hometown"
                        description: "Mars"
                        detail: 2
                    }
                    ListElement{
                        name:"Birth Date"
                        description: "BC 2014-06"
                        detail: 0
                    }
                    ListElement{
                        name:"Ethic"
                        description: "Han"
                        detail: -1

                    }
                    ListElement{
                        name:"Phone"
                        description:  "111-222-333-00"
                        detail: 1
                    }
                }
                leftWidth: 192
                name: "Primary Infomantion"
            }
        }
    }
}
