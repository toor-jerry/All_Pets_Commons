//  Modifiers.swift
//  All_Pets
//
//  Created by Gerardo Bautista Castañeda on 10/08/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI

// MARK: - GenAligmentView
public struct GenAligmentView: ViewModifier {
    
    var aligment: TextAlignment
    
    public init(aligment: TextAlignment) {
        self.aligment = aligment
    }
    
    public func body(content: Content) -> some View {
        HStack {
            if aligment == .trailing {
                Spacer()
            }
            content
            if aligment == .leading {
                Spacer()
            }
        }
    }
}

// MARK: - GenProfileImage
public struct GenProfileImage: ViewModifier {

    let size: CGFloat
    
    public init(size: CGFloat) {
        self.size = size
    }

    public func body(content: Content) -> some View {
        content
            .cornerRadius(50)
            .frame(width: size, height: size)
            .background(.white)
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .modifier(shadowStyle1())
    }
}

// MARK: - GenImageSize
public struct GenImageSize: ViewModifier {
    
    var size: CGFloat
    var padding: CGFloat
    
    public init(size: CGFloat = 40, padding: CGFloat = 4) {
        self.size = size
        self.padding = padding
    }
    
    public func body(content: Content) -> some View {
        content
            .frame(width: size, height: size)
            .aspectRatio(contentMode: .fill)
            .padding(.all, padding)
    }
}

// MARK: - GenNavigationBar
public struct GenNavigationBar: ViewModifier {
    
    var backgroundColor: UIColor?
    var titleColor: UIColor?
    
    public init(backgroundColor: UIColor? = UIColor(Color.backgroundPrincipal),
         titleColor: UIColor? = .black) {
        
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = backgroundColor
        coloredAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }
    
    public func body(content: Content) -> some View {
        ZStack {
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}

public struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner
    
    public init(radius: CGFloat, corners: UIRectCorner) {
        self.radius = radius
        self.corners = corners
    }
    
    struct CornerRadiusShape: Shape {
        
        var radius = CGFloat.infinity
        var corners = UIRectCorner.allCorners
        
        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            return Path(path.cgPath)
        }
    }
    
    public func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}

// - textProfileBackground

public struct textProfileBackground_example: View {
    
    public var body: some View {
        VStack {
            Text("Example on text")
                .modifier(textStylePrincipal())
        }
        .background(.black)
    }
}

public struct textProfileBackground: ViewModifier {
    
    public func body(content: Content) -> some View {
        content
            .cornerRadius(50)
            .padding(.all, 4)
            .frame(width: 40, height: 40)
            .background(Color.black.opacity(0.2))
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
    }
}

// - textStylePrincipal

public struct textStylePrincipal_example: View {
    
    public var body: some View {
        VStack {
            Text("Example on text")
                .modifier(textStylePrincipal())
        }
        .background(.black)
    }
}

public struct textStylePrincipal: ViewModifier {
    
    var color: Color
    var setWidth: Bool
    var fontSize: Font
    
    public init(color: Color = .white, setWidth: Bool = true, fontSize: Font = .title3) {
        self.color = color
        self.setWidth = setWidth
        self.fontSize = fontSize
    }
    
    public func body(content: Content) -> some View {
        if setWidth {
            content
                .font(fontSize)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(color)
                .frame(width: 150, height: 19, alignment: .top)
        } else {
            content
                .font(fontSize)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(color)
        }
    }
}


// -

public struct textStyleSubtitle: ViewModifier {
    
    public func body(content: Content) -> some View {
        content
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.gray.opacity(0.8))
    }
}

public struct textStyleTitle2: ViewModifier {
    
    public func body(content: Content) -> some View {
        content
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.gray.opacity(0.8))
    }
}

// - buttonPrincipal

public struct buttonPrincipal_example: View {
    
    public var body: some View {
        Button("Example buttonPrincipal", action: {})
            .modifier(buttonPrincipal())
    }
}

public struct buttonPrincipal: ViewModifier {
    
    private var color: Color = Color(.bluePrincipal)
    var padding: CGFloat = 20.0
    var radius: CGFloat
    public init(padding: CGFloat = 20.0, _ color: Color = .bluePrincipal, _ radius: CGFloat = 50.0) {
        self.color = color
        self.padding = padding
        self.radius = radius
    }
    
    public func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: padding, leading: padding, bottom: padding, trailing: padding))
            .background(color)
            .cornerRadius(radius)
            .modifier(shadowStyle1())
    }
}

// - buttonSecundary

public struct buttonSecundary_example: View {
    
    public var body: some View {
        //        Button("Example buttonPrincipal", action: {})
        //            .modifier(buttonSecundary())
        Button(action: {}, label: {
            Text("buttonSecundary")
                .padding(.leading, 20)
            Spacer()
            Image(systemName: "rectangle.portrait.and.arrow.right")
        })
        .modifier(buttonSecundary())
    }
}

public struct buttonSecundary: ViewModifier {
    
    public func body(content: Content) -> some View {
        content
            .font(.title3)
            .frame(height: 34)
            .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
            .background(.white)
            .foregroundColor(.black.opacity(0.5))
            .cornerRadius(8)
            .modifier(shadowStyle1())
    }
}

// - inputStylePrincipal

public struct inputStylePrincipal_example: View {
    
    public var body: some View {
        VStack {
            Text("Example on text")
                .modifier(inputStylePrincipal())
        }
        .background(.black)
    }
}

public struct inputStylePrincipal: ViewModifier {
    
    var color: Color
    var lineWidth: Double
    
    public init(_ color: Color = .bluePrincipal, _ lineWidth: Double = 4) {
        self.color = color
        self.lineWidth = lineWidth
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.headline)
            .background(Color.white)
            .overlay(RoundedRectangle(cornerRadius: 15)
                .stroke(color, lineWidth: lineWidth))
            .foregroundColor(.black)
    }
}

// - shadowStyle1

public struct shadowStyle1_example: View {
    
    public var body: some View {
        Button("Example shadow", action: { })
            .modifier(shadowStyle1())
    }
}

public struct shadowStyle1: ViewModifier {
    
    public func body(content: Content) -> some View {
        content
            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
    }
}

#Preview {
    VStack {
        textStylePrincipal_example()
            .padding()
        inputStylePrincipal_example()
            .padding()
        shadowStyle1_example()
            .padding()
        buttonPrincipal_example()
            .padding()
        buttonSecundary_example()
            .padding()
    }
}
