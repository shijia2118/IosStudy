//
//  TextFont.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/10.
//

import SwiftUI

struct TextFont: View {
    var body: some View {
        List{
            Section(header:Text("内置的字体大小")){
                VStack{
                    Text("swiftui1").font(.largeTitle)
                    Text("swiftui2").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("swiftui3").font(.title2)
                    Text("swiftui4").font(.title3)
                    Text("swiftui5").font(.headline)
                    Group{
                        Text("swiftui6").font(.body) //默认
                        Text("swiftui7").font(.callout)
                        Text("swiftui8").font(.subheadline)
                        Text("swiftui9").font(.footnote)
                        Text("swiftui10").font(.caption)
                        Text("swiftui11").font(.caption2)
                       
                    }
                }
            }
            Section(header:Text("系统字体(system)")){
                Section(header:Text("DESIGN").font(.title)){
                    VStack{
                        Text("Default font design").font(.system(size:18, design: .default))
                        Text("Monospaced font design").font(.system(size:18, design: .monospaced))
                        Text("Rounded font design").font(.system(size:18, design: .rounded))
                        Text("Serif font design").font(.system(size:18, design: .serif))
                    }
                }
                Section(header:Text("WEIGHT").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)){
                    VStack{
                        Text("regular font weight").font(.system(size: 18, weight:.black))
                        Text("heavy font weight").font(.system(size: 18, weight:.heavy))
                        Text("bold font weight").font(.system(size: 18, weight:Font.Weight.bold ))
                        Text("semibold font weight").font(.system(size: 18, weight:.semibold))
                        Text("medium font weight").font(.system(size: 18, weight:.medium))
                        Text("regular font weight").font(.system(size: 18, weight:.regular))
                        Text("light font weight").font(.system(size: 18, weight:.light))
                        Text("thin font weight").font(.system(size: 18, weight:.thin))
                        Text("ultraLight font weight").font(.system(size: 18, weight:.ultraLight))
                    }
                }
            }
            Section(header:Text("自定义字体")){
                Section(header:Text("字体名称").bold()){
                    VStack{
                        Text("swiftui").font(.custom("Papyrus", size: 30))
                        Text("swiftui").font(.custom("HelveticaNeue-UltraLight", size: 30))
                        //IOS默认的英文字体名称
                        HStack{
                            Text("swiftui").font(.custom("Helvetica", size: 30))
                            Text("swiftui").font(.system(size: 30))
                        }
                        //IOS默认的中文字体名称
                        HStack{
                            Text("你好").font(.custom("Heiti SC", size: 30))
                            Text("你好").font(.system(size: 30))
                        }
                    }
                }
                Section(header:Text("字体大小跟随系统").bold()){
                    VStack(alignment:.leading){
                        Text("以.body为参照,字体大小随系统变化.").font(.custom("Heiti SC", size: 15))
                        Text("字体大小以relativeTo为参照，随系统变化").font(.custom("Heiti SC", size:15,relativeTo:.headline))
                        Text("固定字体大小.").font(.custom("Heiti SC", fixedSize: 15))
                    }
                }
            }
        }
    }
}

struct TextFont_Previews: PreviewProvider {
    static var previews: some View {
        TextFont()
    }
}
