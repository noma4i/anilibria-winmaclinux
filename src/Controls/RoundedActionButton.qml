/*
    AniLibria - desktop client for the website anilibria.tv
    Copyright (C) 2020 Roman Vladimirov

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.0
import "../Theme"

Button {
    id: _button
    Material.foreground: ApplicationTheme.roundedButtonForeground // "white"
    background: Rectangle {
        color: _button.hovered || _button.down ? ApplicationTheme.roundedButtonHovered /*"#881919"*/ : ApplicationTheme.roundedButtonBackground //"#b32121"
        border.color: "transparent"
        border.width: 1
        radius: 18
    }
}
