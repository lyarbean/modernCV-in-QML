import QtQuick 2.4
import QtQml.Models 2.1
import QtQuick.Window 2.2

Window {
    id: root
    //    width: 1149
    //    height: 1680
    // For dpi 97x97, A4: 210x 297 or 8.27 in × 11.69
    // pixel := (8.27,11.69)x97
    //       := (802,1134)
    width: 802
    height: 1134
    visible: true
    property int  nameWidth: 128
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
    property int printPageIndex: 0
    Timer {
        id: timer
        interval: 200
        running: false; repeat: true
        onTriggered:{
            console.log(  frame.contentY , "/", frame.childrenRect.height)
            if (frame.contentY == frame.childrenRect.height) {

                stop();
                return
            } else {
                frame.contentY = (1134 - 160) * printPageIndex
                printPageIndex++;
            }
            viewPort.grabToImage(function(result) {
                var s = "000" + printPageIndex
                result.saveToFile("/tmp/slide"+ s.substr(s.length - 4) + ".png")
            });
        }
    }

    Rectangle {
        id: viewPort
        width: 802
        height: 1134
        color: "white"
        focus: true
        Keys.onEscapePressed: {
            timer.start()
        }
        ListView {
            id: frame
            x: 100
            y: 80
            width: 802 - 100
            height: 1134 - 200
            spacing: 20
            focus: true
            clip:true
            snapMode: ListView.SnapToItem
            model: contentModel
            onFlickEnded: {
                viewPort.grabToImage(function(result) {
                    var s = "000" + printPageIndex
                    result.saveToFile("/tmp/slide"+ s.substr(s.length - 4) + ".png")
                    printPageIndex++
                    console.log("xssdsdsd")
                });
            }
        }
        ObjectModel {
            id: contentModel
            Row {
                spacing: 100
                Text {
                    text: "Name xxx"
                    anchors.bottom: photo.bottom
                }
                Text {
                    text: "homepage http://xxxx.yy.com"
                    anchors.bottom: photo.bottom
                }
                Image {
                    id: photo
                    source: "qrc:/rasp_orig.png"
                    width: 200
                    fillMode: Image.PreserveAspectFit
                }
            }
            Section {
                details: [itemModel0, itemModel1, itemModel2]

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
                leftWidth: nameWidth
                name: "Primary Infomantion 1"
            }
            Section {
                details: []
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
                leftWidth: nameWidth
                name: "Primary Infomantion 2"
            }
            Section {
                details: []

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
                leftWidth: nameWidth
                name: "Primary Infomantion 3"
            }
            Section {
                details: []
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
                leftWidth: nameWidth
                name: "Primary Infomantion 4"
            }

            Section {
                details: []

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
                leftWidth: nameWidth
                name: "Primary Infomantion 5"
            }
            Section {
                details: []

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
                leftWidth: nameWidth
                name: "Primary Infomantion 6"
            }
            Section {
                details: []

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
                leftWidth: nameWidth
                name: "Primary Infomantion 7"
            }
            Section {

                details: []

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
                leftWidth: nameWidth
                name: "Primary Infomantion 8"
            }
            Section {
                details: []

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
                leftWidth: nameWidth
                name: "Primary Infomantion 9"
            }
            Section {

                details: []

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
                leftWidth: nameWidth
                name: "Primary Infomantion 10"
            }
            Section {
                details: []

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
                leftWidth: nameWidth
                name: "Primary Infomantion 11"
            }
            Section {
                details: []

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
                leftWidth: nameWidth
                name: "Primary Infomantion 12"
            }
            Section {
                details: []

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
                leftWidth: nameWidth
                name: "Primary Infomantion 13"
            }
        }
    }
}


