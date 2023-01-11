//
//  TextPage.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/5.
//

import SwiftUI

private let github = "https://developer.apple.com/tutorials/swiftui/creating-and-combining-views"

struct TextPage: View {
    var body: some View {
        List{
            Section(header:Text("字间距")){
                VStack(alignment: .leading){
                    Text("kerning_1.0").kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    Text("kerning_5.0").kerning(5.0)
                    Text("kerning_10.0").kerning(10.0)
                    Text("你好").kerning(10.0)
                    Text("你好")
                        .tracking(10)
                    Text("kerning_10.0")
                        .tracking(10)
                }
            }
            Section(header:Text("行间距")){
                Text("默认行间距:Views and controls are the visual building blocks of your app’s user interface.")
                Text("5倍行间距:Views and controls are the visual building blocks of your app’s user interface.")
                    .lineSpacing(5.0)
                Text("10倍行间距:Views and controls are the visual building blocks of your app’s user interface.")
                    .lineSpacing(10.0)
            }
            Section(header:Text("斜体、加粗")){
                VStack{
                    Text("italic").italic()
                    Text("bold").bold()
                }
            }
            Section(header:Text("文本溢出")){
                Text("Views and controls are the visual building blocks of your app’s user interface.Use them to present your app’s content onscreen.")
                    .lineLimit(1)
                    .truncationMode(.head) //省略号在头部
                Text("Views and controls are the visual building blocks of your app’s user interface.Use them to present your app’s content onscreen.")
                    .lineLimit(1)
                    .truncationMode(.middle) //省略号在中间
                Text("Views and controls are the visual building blocks of your app’s user interface.Use them to present your app’s content onscreen.")
                    .lineLimit(1)
                    .truncationMode(.tail) //省略号在尾部
            }
            Section(header:Text("字体颜色")){
                HStack{
                    Text("red_color").foregroundColor(Color.red)
                    Text("blue_color").foregroundColor(Color.blue)
                    Text("yellow_color").foregroundColor(Color.yellow)
                }
                HStack{
                    Text("orange_color").foregroundColor(Color.orange)
                }
            }
            Section(header:Text("文本背景色")){
                Text("SwiftUi").background(Color.yellow)
            }
            Section(header:Text("文本行数")){
                Text("限制2行：Views and controls are the visual building blocks of your app’s user interface.Use them to present your app’s content onscreen.")
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            }
            Section(header:Text("文本旋转")){
                Text("Views and controls are the visual building blocks of your app’s user .")
                    .transformEffect(CGAffineTransform.init(rotationAngle: .pi/90))
            }
            Section(header:Text("对齐方式")){
                Text("左对齐:Views and controls are the visual building blocks of your app’s user interface.Use them to present your app’s content onscreen.")
                    .multilineTextAlignment(.leading)
                Text("居中对齐:Views and controls are the visual building blocks of your app’s user interface.Use them to present your app’s content onscreen.")
                    .multilineTextAlignment(.center)
                Text("右对齐:Views and controls are the visual building blocks of your app’s user interface.Use them to present your app’s content onscreen.")
                    .multilineTextAlignment(.trailing)
            }
            Group{
                Section(header:Text("阴影")){
                    Text("SwiftUi")
                        .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10.0, y: 1.0)
                    
                }
                Section(header:Text("文本尺寸")){
                    Text("Views and controls are the visual building blocks of your app’s user interface.Use them to present your app’s content onscreen.")
                        .background(Color.yellow)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: 200, maxWidth: 350, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                    
                }
                Section(header:Text("字体大小")){
                    Text("12").font(.custom("哈哈哈", fixedSize: 18))
                    Text("12").font(.custom("哈哈哈", fixedSize: 14))
                }
                Section(header:Text("带下划线链接")){
                    Text(github)
                        .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.green)
                        .foregroundColor(Color.black)
                        .onTapGesture {
                            print(github)
                        }
                }
                Section(header:Text("外边距")){
                    HStack{
                        Text("EdgeInsets").padding(EdgeInsets(top: 5, leading: 10, bottom: 15, trailing: 20))
                            .background(Color.yellow)
                        Text("All_10").padding(10).background(Color.yellow)
                        Text("默认").padding().background(Color.blue)
                        
                    }
                    HStack{
                        Text("all").padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color.blue)
                        Text("bottom").padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color.blue)
                        Text("top").padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color.blue)
                        Text("left").padding(.leading, 10).background(Color.blue)
                        Text("right").padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color.blue)
                        
                    }
                    HStack{
                        Text("horizontal").padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color.blue)
                        Text("vertical").padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color.blue)
                    }
                }
                Section(header:Text("自适应字体大小")){
                    Text("Views and controls are the visual building blocks of your app’s user interface.Use them to present your app’s content onscreen.")
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                        
                }
                Section(header:Text("边框")){
                    Text("Views and controls are the visual building blocks of your app’s user interface.Use them to present your app’s content onscreen.")
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }
                Section(header:Text("高斯模糊")){
                    Text("radius: 0.5   opaque: true")
                        .foregroundColor(Color.blue)
                        .blur(radius: 0.5,opaque:true)
                    Text("radius: 1   opaque: false")
                        .blur(radius: 1,opaque:false)
                    Text("radius: 0.5   opaque: false(正常)")
                }
                
                Section(header:Text("基准线偏移")){
                    Text("swiftui")
                        .baselineOffset(10)
                        .border(Color.red)
                }
                Section(header:Text("删除线")){
                    HStack{
                        Text("默认")
                            .strikethrough()
                        Text("蓝线")
                            .strikethrough(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.blue)
                     

                    }
                }
            }
                
            

        }
        
    }
}

struct TextPage_Previews: PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
