/**
    
    Copyright (C) 2023  Frederik Olberg

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

import SwiftUI

@available(macOS 10.15, *)
struct RadarChartValues : Identifiable {
    let values: [Double]
    let color: Color
    let roundedCorners: CGFloat
    let id = UUID()
    
    internal init(
        values: [Double],
        color: Color = Color.pink.opacity(0.8),
        rounded: CGFloat = 0.0 ) {
            
            self.values = values
            self.color = color
            self.roundedCorners = rounded
        }
}
