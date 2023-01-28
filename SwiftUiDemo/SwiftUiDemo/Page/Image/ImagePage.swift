//
//  ImagePage.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/18.
//

import SwiftUI

struct ImagePage: View {
    var body: some View {
        List{
            Section(header:Text("系统图标")){
                HStack{
                    Image(systemName: "clear")
                    Image(systemName: "clear.fill")
                    Image(systemName: "square")
                    Image(systemName: "square.fill")
                    Image(systemName: "circle")
                    Image(systemName: "circle.fill")
                    Image(systemName: "4.square.fill")
                    Image(systemName: "01.circle")
                    Image(systemName: "01.circle.fill")
                }
            }
            Section(header:Text("本地图片")){
                Section(header:Text("resizable").bold()){
                    NavigationLink(destination:ResizableParam()){
                        Text("图片将铺满整个屏幕的安全区域。“安全区域”是指除了顶部状态栏和底部菜单栏的部分区域。点击观看效果>>>")
                    }
                }
                Section(header:Text("edgesIgnoringSafeArea").bold()){
                    NavigationLink(destination:ResizableParam()){
                        Text("若要将图片铺满整个屏幕，可以添加属性\"edgesIgnoringSafeArea\"点击观看效果>>>")
                    }
                }
                Section(header:Text("scaledToFit").bold()){
                    NavigationLink(destination:ScaledToFit()){
                        Text("上述2个属性只是简单的拉伸缩放，而没有保持原有的比例，如果我们想等比例缩放，那么我们需要使用.scaledToFit()修饰，这样就可以保持原有图像的宽高比。点击观看效果>>>")
                    }
                }
                Section(header:Text("aspectRatio").bold()){
                    NavigationLink(destination: AspectRatio()){
                        Text("使用.aspectRatio(contentMode: .fit)也可以达到同样的效果。点击观看效果>>>")
                    }
                }
                Section(header:Text("frame").bold()){
                    NavigationLink(destination: Frame()){
                        Text("如果我们想调整图片的大小，可以通过设置frame的宽或高。点击观看效果>>>")
                    }
                }
                Section(header:Text("clipShape").bold()){
                    NavigationLink(destination: ClipShape()){
                        Text("如果我们想要用一张图片作为头像，但我们的图片有可能不是圆形的。可以通过设置clipShape属性，将多余图片裁剪。点击观看效果>>>")
                    }
                }
                Section(header:Text("opacity").bold()){
                    NavigationLink(destination: Opacity()){
                        Text("如果图片色调太深了，与App整体色调相冲突。可以尝试降低图片的透明度，使它和App更和谐。点击观看效果>>>")
                    }
                }
                Section(header:Text("overlay").bold()){
                    NavigationLink(destination: Overlay()){
                        Text("如果需要在图片上显示文字或者图标，我们可以在图片上再添加一个视图，“覆盖”在上面。点击观看效果>>>")
                    }
                }
            }
            Section(header:Text("网络图片")){
                NavigationLink(destination: AysncImage()){
                    Text("点击跳转到AnsycImage>>>")
                }
               
            }
        }
    }
}

struct ImagePage_Previews: PreviewProvider {
    static var previews: some View {
        ImagePage()
    }
}
