//
//  ContentView.swift
//  Views案例
//
//  Created by zhangwenyi on 2022/5/27.
//

import SwiftUI


//extension LabelStyle where Self == RedBorderedLabelStyle {
//
//    /// A label style that only displays the title of the label.
//    public static var redborderedLabel: RedBorderedLabelStyle { get }
//}


/*
struct ContentView: View {
    
    //自定义label样式
    struct RedBorderedLabelStyle: LabelStyle {
        func makeBody(configuration: Configuration) -> some View {
            Label(configuration)
                .border(Color.red)
        }
    }
    
    enum city: String {
        case taiyuan,xian,datong
    }
    @State var str: String = "wy"
    @State var textColor = Color.red
    @State var selectedCity = city.xian
    @State private var progress = 0.5
    @State private var speed = 50.0
    @State private var isEditing = false
    @State private var vibrateOnRing = false
    @State private var value = 0
    let colors: [Color] = [.orange, .red, .gray, .blue,
                               .green, .purple, .pink]
    let step = 5
    let range = 1...50
    @State var show = false

    func incrementStep() {
        value += 1
        if value >= colors.count { value = 0 }
    }

    func decrementStep() {
        value -= 1
        if value < 0 { value = colors.count - 1 }
    }
    var body: some View {
        VStack {
            /*
            VStack {
                /*
                //1、Text
                Text("我是一个Text，**Markdown语法加粗了**").foregroundColor(.red)

                //2、Label
                VStack {
                    //用户界面项的标准标签，由带有标题的图标组成。
                    //labelStyle设置label样式
                    Label("Lightning", systemImage: "bolt.fill")
                    Label("Lightning", systemImage: "bolt.fill")
                        .labelStyle(.iconOnly)
                    Label("Lightning", systemImage: "bolt.fill")
                        .labelStyle(.titleOnly)
                    //自定义label样式
//                    Label("Lightning", systemImage: "bolt.fill")
//                        .labelStyle(.makeBody(RedBorderedLabelStyle))
                    
                    //多label统一样式
                     VStack {
                         Label("Rain", systemImage: "cloud.rain")
                         Label("Snow", systemImage: "snow")
                         Label("Sun", systemImage: "sun.max")
                     }
                     .labelStyle(.iconOnly)
                    
                    //组合标签
                    Label {
                        Text("wenyi")
                            .font(.body)
                            .foregroundColor(.primary)
                        Text("ya")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    } icon: {
                        Circle()
                            .fill(.orange)
                            .frame(width: 44, height: 44, alignment: .center)
                            .overlay(Text("圆")).foregroundColor(.white)
                    }
                }
                
                
                //Button，文字和响应
                Button {
                    print("button点击响应")
                } label: {
                    Text("我是按钮")
                }
                
                //Link
                //只是添加一个URL即可
                Link(destination: URL(string:"https://www.baidu.com/")!) {
                    /*@START_MENU_TOKEN@*/Text("Link")/*@END_MENU_TOKEN@*/
                }
                
                Link("View Our Terms of Service",
                      destination: URL(string: "https://www.example.com/TOS.html")!)
                //设置OpenURLAction
                Link("Visit Our Site", destination: URL(string: "https://www.example.com")!)
                    .environment(\.openURL, OpenURLAction { url in
                        print("Open \(url)")
                        return .handled
                    })
                
                */
                
//                Image("wy")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                Text("Water wheel")
                
                //直接拿Assets中图片
                Image("wy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                UIImage.init(named: "wy.png")
                
                //加载网络图片
    //            AsyncImage.
                
                
                //TimelineView
                TimelineView(.periodic(from: Date.now, by: 1.0)) {
                    context in
                    Text(context.date.description).font(.title)
                }
                //Canvas
                Canvas { context, size in
                    context.stroke(Path(ellipseIn: CGRect(origin: .zero, size: size)),with: .color(.blue), lineWidth: 3)
                }.frame(width: 100, height: 50, alignment: .center).border(.red,width: 2)
                
                //TextEditor
                TextEditor(text: .constant("Placeholder")).frame(width: 100, height: 30, alignment: .center)
                
                //TextField，预览无法操作
                TextField("首字母默认大写", text: $str).frame(width: 100, height: 56, alignment: .center)
                    .textInputAutocapitalization(.never)
                    //自动纠错
                    .disableAutocorrection(true)
//                    .border(.red, width: 1)
//                    .cornerRadius(20)
                    .overlay{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.red, lineWidth: 10)
                            .padding(-10)
                    }
                    .onSubmit {
                        print("我点击了！")
                    }
                
            }
            VStack {
                //ColorPicker
                //supportsOpacity是否设置透明度
                ColorPicker("picker", selection: $textColor, supportsOpacity: false).font(.largeTitle).foregroundColor(textColor)
                
                //Picker
                Picker(selection: $selectedCity, label: Text("Picker").frame(width: 50, height: 10, alignment: .center)) {
                    Text("taiyuan").tag(city.taiyuan)
                    Text("xian").tag(city.xian)
                    Text("datong").tag(city.datong)
                }.border(.orange)
                Text("this city is : \(selectedCity.rawValue)")

                //ProgressView
//                ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                ProgressView(value: progress, total: 10, label: {
                    Text("WY")
                }, currentValueLabel: {
                    Text("start")
                })
                .progressViewStyle(.circular)
                Button("加1") {
                    progress += 1
                }
                ProgressView().progressViewStyle(.linear)
  
                Slider(
                        value: $speed,
                        in: 0...100,
                        step: 5
                    ) {
                        Text("Speed")
                    } minimumValueLabel: {
                        Text("0")
                    } maximumValueLabel: {
                        Text("100")
                    } onEditingChanged: { editing in
                        isEditing = editing
                    }
                Text("\(speed)")
                        .foregroundColor(isEditing ? .red : .blue)
                
                Toggle(isOn: $vibrateOnRing) {
                    Text("Vibrate on Ring")
                }
                Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
                
             }
             */
            VStack {
                //Stepper
                Stepper {
                    //左侧文本
                        Text("Value: \(value) Color: \(colors[value].description)")
                    } onIncrement: {//加操作
                        incrementStep()
                    } onDecrement: {//减操作
                        decrementStep()
                    }
                    .padding(5)
                    .background(colors[value])//设置颜色
                //设置范围，且默认加减
                Stepper(value: $value,
                                in: range,
                                step: step) {
                            Text("Current: \(value) in \(range.description) " +
                                 "stepping by \(step)")
                        }
                            .padding(10)
                
                //图形渐变
                //角渐变
                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue,.purple,.red]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                //椭圆
                EllipticalGradient(colors:/*@START_MENU_TOKEN@*/[Color.blue, Color.green]/*@END_MENU_TOKEN@*/, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadiusFraction: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, endRadiusFraction: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)

                //线性
                LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                
                //辐射渐变
                RadialGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, center: .bottomLeading, startRadius: 100, endRadius: 120)
                
                //TabView
                VStack {
                    TabView() {
                        Text("Tab Content 1").tabItem {
                            Image(systemName: "person")
                            Text("Tab Label 1")
                        }.tag(1).badge(Text("news"))

                        Text("Tab Content 2").tabItem {
                            Text("Tab Label 2")
                        }.tag(2)
                    }
                    TabView() {
                        Text("Tab Content 1").tabItem {
                            Image(systemName: "person")
                            Text("Tab Label 1")
                        }.tag(1).badge(Text("news"))
                        
                        Text("Tab Content 2").tabItem {
                            Text("Tab Label 2")
                        }.tag(2)
                    }.tabViewStyle(.page).background(.orange)
                }
                Button("Open Sheet") {
                    show.toggle()
                }
                .sheet(isPresented: $show) {
                    Button("Close") {
                        show.toggle()
                    }
                    .interactiveDismissDisabled()
                }
                
                
                
            }
        }
        
//        .contentShape(Rectangle())//追加热区设置
//        .onTapGesture {
//                print("tap")
//                //热区
//                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//        }
        
        
    }

}
*/

//布局
/*
struct ContentView: View {
    var body: some View {
        //包括leading、trailing、center
        VStack(alignment:.leading, spacing: 20){
            Text("orange").background(.orange).font(.caption)
            Text("red").background(.red).font(.title)
            Text("blue").background(.blue).font(.largeTitle)
            Text("yellow").background(.yellow).font(.callout)
        }
        .border(.gray)
        //包括bottom、top、firstTextBaseline、lastTextBaseline、center、
        HStack(alignment:.bottom, spacing: 20){
            Text("orange").background(.orange).font(.caption)
            Text("red").background(.red).font(.title)
            Text("blue").background(.blue).font(.largeTitle)
            Text("yellow").background(.yellow).font(.callout)
        }
        .border(.gray)
        //包括leading、trailing、bottom、top、bottomLeading、topLeading、bottomtrailing、toptrailing、center
        ZStack(alignment: .bottomTrailing){
            Text("orange").background(.orange).font(.caption)
            Text("red").background(.red).font(.title)
            Text("blue").background(.blue).font(.largeTitle)
            Text("yellow").background(.yellow).font(.callout)
        }
        .border(.gray)
    }
}

*/

//searchable
/*
//创建一个model项
struct ItemModel: Identifiable {
    var id = UUID()
    var name: String
    var detailView: DetailView
}

//创建一个详情View
struct DetailView: View, Identifiable {
    var id = UUID()
    var detail: String
    @State var text = ""
    var body: some View {
        VStack (alignment: .leading){
            Text(detail).font(.largeTitle).foregroundColor(.gray).bold()
                .searchable(text: $text){
                    Text("大同").searchCompletion("大同")
                    Text("太原").searchCompletion("太原")
                    Text("太原").searchCompletion("太原")
                    Text("太原").searchCompletion("太原")
                    Text("太原").searchCompletion("太原")
                }
            Spacer()
        }
       
    }
}

//定义一个数组
let datas: [ItemModel] = [
    ItemModel(name: "太原", detailView: DetailView(detail: "山西省会")),
    ItemModel(name: "西安", detailView: DetailView(detail: "陕西省会")),
    ItemModel(name: "银川", detailView: DetailView(detail: "宁夏省会")),
    ItemModel(name: "西宁", detailView: DetailView(detail: "青海省会")),
    ItemModel(name: "呼和浩特", detailView: DetailView(detail: "内蒙省会")),
    ItemModel(name: "郑州", detailView: DetailView(detail: "河南省会"))
]

//创建一个viewModel，提供了数组项
//并且还有一个filtedItems用来过滤每一项
class ViewModel: ObservableObject {
    
    @Published var allItems: [ItemModel] = datas
    @Published var searchedItem: String = ""
    
    var filtedItems: [ItemModel] {
        searchedItem.isEmpty ? allItems : allItems.filter({ str in
            str.name.lowercased().contains(searchedItem.lowercased())
        })
    }
}

struct ContentView: View {
    @ObservedObject var vm = ViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.filtedItems) {item in
                    NavigationLink(item.name, destination:  item.detailView)
                }
            }
            .navigationTitle(Text("搜索页面"))
            .searchable(text: $vm.searchedItem, prompt: "输入您想要搜索的省会名称")
        }
    }
}
*/

//OnOpenURL
/*
struct ContentView: View {
    @State var show = true
    @State var tabSelection = 1
    var body: some View {
        TabView(selection: $tabSelection) {
            Text("Tab Content 1").tabItem {
                Image(systemName: "person")
                Text("Tab Label 1")
            }.tag(1).badge(Text("news"))
            
            Text("Tab Content 2").tabItem {
                Image(systemName: "person")
                Text("Tab Label 2")
            }.tag(2)
        }.onOpenURL { url in
            switch url.host {
            case "tab1":
                tabSelection = 1
            case "tab2":
                tabSelection = 2
            default:
                show.toggle()
            }
        }
        .sheet(isPresented: $show) {
            Text("URL参数错误")
        }
    }
}
*/

//animation
/*
struct ContentView: View {
    @State var scaleAmount: CGFloat = 1 //用来修改尺寸
    var body: some View {
        Button("animation") {
            scaleAmount += scaleAmount < 1 ? 1 : -1 //设置尺寸
        }.font(.title).padding().background(.blue).cornerRadius(20).border(.red,width: 3)
            .scaleEffect(scaleAmount)
            .animation(.default, value: scaleAmount)
    }
}
 */
//contextMenu
struct ContentView: View {
    @State var backgroundColor = Color.red
    @State var isShow = true
    @State var show = false
    var body: some View {
        
        VStack (spacing:20){
            

        /*
        VStack {
//        Text("Hello world~").bold().font(.largeTitle).foregroundColor(.white).background(backgroundColor)
//            .contextMenu (isShow ? ContextMenu{
//                Button("Red") {
//                    backgroundColor = .red
//                }
//                Button("Green") {
//                    backgroundColor = .green
//                }
//                Button("Blue") {
//                    backgroundColor = .blue
//                }
//                Button {
//                    backgroundColor = .yellow
//                } label: {
//                    Label("yellow", systemImage: "scribble")
//                }
//            } : nil )
        Menu("Menu") {
            Text("Item1")
            Text("Item2")
            Text("Item3")
            Button("Red") {
                backgroundColor = .red
            }
            Button("Green") {
                backgroundColor = .green
            }
            Button("Blue"){
                backgroundColor = .blue
            }
            Button("Yellow"){
                backgroundColor = .yellow
            }
            Menu("Menu") {
                Text("Item1")
                Text("Item2")
                Text("Item3")
                Button("Red") {
                    backgroundColor = .red
                }
                Menu("Menu") {
                    Text("Item1")
                    Text("Item2")
                    Text("Item3")
                    Button("Red") {
                        backgroundColor = .red
                    }
                }
            }
        }
    
        NavigationView {
            Form {
                Text("item1")
                Text("item2")
                Text("item3")
            }
        }
            ScrollViewReader { proxy in
                Button("gotoBottom"){
                    proxy.scrollTo(90)
                }
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .center, spacing: 10) {
                        ForEach(0..<100) {
                            Text("cell \($0)").font(.title)
                        }
                        .frame(maxWidth:.infinity)
                    }
                }
            }
            
        
    }
         */
        //设置工具栏
//        NavigationView {
//            Text("Hello World!").navigationTitle("navigation")
//                .toolbar {
//                    ToolbarItem(placement: .navigationBarLeading) {
//                        Button("Edit") {}
//                    }
//                    ToolbarItem(placement: .navigationBarTrailing) {
//                        Button("back") {}
//                    }
//                }
//
//        }
        //Alert
        Button("show Alert") {
            show.toggle()
        }
        .alert(isPresented: $show) {
            Alert.init(title: Text("title"), message: Text("message"), dismissButton: .cancel())
        }
        
        Button("show Dialog") {
            show.toggle()
        }.confirmationDialog("dialog", isPresented: $show) {
            Button("btn1") {}
            Button("btn2") {}
            Button("btn3") {}
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



