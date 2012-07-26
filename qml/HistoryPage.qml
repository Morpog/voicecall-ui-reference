/****************************************************************************
**
** Copyright (C) 2011-2012 Tom Swindell <t.swindell@rubyx.co.uk>
** All rights reserved.
**
** This file is part of the Voice Call UI project.
**
** You may use this file under the terms of the BSD license as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * The names of its contributors may NOT be used to endorse or promote
**     products derived from this software without specific prior written
**     permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
****************************************************************************/
import QtQuick 1.1
import com.nokia.meego 1.1

Page {
    id:root

    orientationLock:PageOrientation.LockPortrait

    BorderImage {
        anchors {fill:parent;topMargin:71}
        source:'images/meegotouch-page-background-inverted.png';
        border.left:20
        border.right:20
        border.top:0
        border.bottom:0
    }

    SelectionDialog {
        id:dHistorySelect
        model:ListModel {
          ListElement {tag:''; name:'Recent calls'}
          ListElement {tag:''; name:'Missed calls'}
          ListElement {tag:''; name:'Received calls'}
          ListElement {tag:''; name:'Dialled calls'}
        }
        onSelectedIndexChanged: bHistorySelect.text = model.get(selectedIndex).name
    }

    Button {
        id:bHistorySelect
        width:parent.width;height:72
        platformStyle: ButtonStyle {
            background:'images/meegotouch-window-tabbutton-background-inverted.png'
            pressedBackground:'images/meegotouch-window-tabbutton-background-inverted.png'
        }

        text:qsTr('Recent Calls')
        onClicked:dHistorySelect.open();
    }
}

