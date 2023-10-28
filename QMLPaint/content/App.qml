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

    property bool isLateralMenuOpened: false

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
        visible: isLateralMenuOpened
        x: isLateralMenuOpened ? parent.width - lateralMenu.width : parent.width

        transitions: Transition
        {
            NumberAnimation
            {
                property: "x"
                duration: 250
                easing.type: Easing.InOutQuad
            }
        }
    }

    Connections
    {
        target: toolbar
        onMenuButtonPressed: () =>
        {
            isLateralMenuOpened = !isLateralMenuOpened;
        }
    }
    Connections
    {
        target: toolbar
        onToolSelected: (toolName) =>
        {
            selectTool(toolName);
        }
    }

    // Function to handle the selected tool
    function selectTool(toolName)
    {
        // Disable the previous selected tool
        toolbar.disableButtonsExcept(toolName);

        // Handle the tool functionality
        switch (toolName)
        {
        case "Tools":
            openToolsPanel();
            break;
        case "Shapes":
            openShapePanel();
            break;
        case "Text":
            openTextPanel();
            break;
        case "Effects":
            openEffectsPanel();
            break;
        case "Frame":
            openFramePanel();
            handleFrameResize();
            break;
        }
    }

    function openToolsPanel()
    {
        console.log("Tools panel");
    }

    function openShapePanel()
    {
        console.log("Shape panel");
    }

    function openTextPanel()
    {
        console.log("Text panel");
    }

    function openEffectsPanel()
    {
        console.log("Effects panel");
    }

    function openFramePanel()
    {
        console.log("Frame panel");
    }

    function handleFrameResize()
    {
        console.log("Resize frame");
    }
}

