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
struct PolygonView: Shape {
    let numberOfSides: Int
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            let center = CGPoint(x: rect.width / 2.0, y: rect.height / 2.0)
            let angle = .pi * 2.0 / Double(numberOfSides)
            
            for i in 0..<numberOfSides {
                let xPosition = center.x - CGFloat(sin(Double(i) * angle)) * radius
                let yPosition = center.y - CGFloat(cos(Double(i) * angle)) * radius
                let point = CGPoint(x: xPosition, y: yPosition)
                
                if i == 0 {
                    path.move(to: point)
                } else {
                    path.addLine(to: point)
                }
            }
            path.closeSubpath()
        }
    }
}

@available(macOS 10.15, *)
struct PolygonView_Previews: PreviewProvider {
    static var previews: some View {
        PolygonView(numberOfSides: 5, radius: 100)
            .frame(width: 200, height: 200)
    }
}
