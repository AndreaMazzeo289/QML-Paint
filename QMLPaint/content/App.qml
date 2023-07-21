// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0

import QtQuick 6.4
import QtQuick.Window 6.4
import QMLPaint
import CustomComponents

Window {
    width: Constants.width
    height: Constants.height

    visible: true
    title: "QMLPaint"

    Rectangle
    {
        anchors.fill: parent
        color: Constants.backgroundColor
    }

    Toolbar
    {
        id: toolbar
        anchors.top: parent.top
    }

    SecondaryToolbar
    {
        id: secondary_toolbar
        anchors.top: toolbar.bottom
        anchors.left: parent.left
        anchors.right: sidebar.left
    }

    Sidebar
    {
        id: sidebar
        anchors.top: toolbar.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }

    Canvas
    {
        id: canvas
        anchors.top: secondary_toolbar.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: sidebar.left
        anchors.margins: 10 * Constants.marginUnit
    }

    LateralMenu
    {
        id: lateralMenu
        anchors.fill: parent
        visible: false
    }
}

