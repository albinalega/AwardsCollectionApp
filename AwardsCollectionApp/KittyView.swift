//
//  KittyView.swift
//  AwardsCollectionApp
//
//  Created by Альбина Лега on 27.12.2022.
//

import SwiftUI

struct KittyView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            
            let furtherPoint = size * 0.75
            let horizontalNearestPoint = size * 0.25
            let verticalNearestPoint = size * 0.15
            
            Rectangle()
                .foregroundColor(.pink)
                .cornerRadius(60)
            
            Path { path in
                path.move(to: CGPoint(x: middle * 1.1, y: verticalNearestPoint * 2))
                path.addLine(to: CGPoint(x: middle * 1.3, y: verticalNearestPoint))
                path.addLine(to: CGPoint(x: furtherPoint, y: verticalNearestPoint * 2))
                
                path.addQuadCurve(
                    to: CGPoint(x: furtherPoint, y: furtherPoint),
                    control: CGPoint(x: size, y: middle)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: horizontalNearestPoint, y: furtherPoint),
                    control: CGPoint(x: middle, y: size * 0.95)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: horizontalNearestPoint, y: verticalNearestPoint * 2),
                    control: CGPoint(x: 0, y: middle)
                )
                
                path.addLine(to: CGPoint(x: middle * 0.7, y: verticalNearestPoint))
                path.addLine(to: CGPoint(x: middle * 0.9, y: verticalNearestPoint * 2))
                path.closeSubpath()
            }
            .foregroundColor(.orange)
            
            Path { path in
                path.move(to: CGPoint(x: middle * 1.1, y: verticalNearestPoint * 2))
                path.addLine(to: CGPoint(x: middle * 1.3, y: verticalNearestPoint))
                path.addLine(to: CGPoint(x: furtherPoint, y: verticalNearestPoint * 2))
                
                path.addQuadCurve(
                    to: CGPoint(x: furtherPoint, y: furtherPoint),
                    control: CGPoint(x: size, y: middle)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: horizontalNearestPoint, y: furtherPoint),
                    control: CGPoint(x: middle, y: size * 0.95)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: horizontalNearestPoint, y: verticalNearestPoint * 2),
                    control: CGPoint(x: 0, y: middle)
                )
                
                path.addLine(to: CGPoint(x: middle * 0.7, y: verticalNearestPoint))
                path.addLine(to: CGPoint(x: middle * 0.9, y: verticalNearestPoint * 2))
                path.closeSubpath()
            }
            .stroke(.white, style: StrokeStyle(lineWidth: 3))
            
            Path { path in
                path.move(to: CGPoint(x: middle * 0.9, y: middle * 1.2))
                path.addLine(to: CGPoint(x: middle * 1.1, y: middle * 1.2))
            }
            .stroke(.white, style: StrokeStyle(lineWidth: 3))
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: middle * 1.2))
                path.addLine(to: CGPoint(x: middle, y: middle * 1.4))
            }
            .stroke(.white, style: StrokeStyle(lineWidth: 3))
                    }
    }
}
        
struct KittyView_Previews: PreviewProvider {
    static var previews: some View {
        KittyView()
            .frame(width: 200, height: 200)
    }
}
