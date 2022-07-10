//
//  ContentView.swift
//  IdleFishHomepage
//
//  Created by Zions Jen on 2021/12/11.
//

import SwiftUI

//数据定义
let ScreenWidth = UIScreen.main.bounds.width
let ScreenHeight = UIScreen.main.bounds.height
let array = ["关注", "推荐", "西安"]
let array1 = [["精品手机":"一年质保"], ["奢品捡漏":"低价保真"], ["潮鞋潮服":"正品尖货"], ["折扣美妆":"低至 9.9"]]
let array2 = [["省心卖":"高价回收"], ["闲鱼潮社":"1元起拍"], ["校园圈":"学生专属"], ["低价卡券":"火锅69折"], ["3C数码":"热门榜单"], ["仓库特卖":"大牌捡漏"]]
let array3 = ["推荐", "手机", "箱包", "盲盒", "手办", "双十一转卖", "童裝"]
let array4 = [["title": "100多台24寸 27寸显示器 ips 电竞曲面直面", "price": "150", "want": "799", "create": "可爱的猫咪"], ["title": "【顺丰包邮】门缝门底密封条房门缝隙隔音降噪", "price": "2.60", "want": "1686", "create": "亮片喜欢"], ["title": "扬盈轻奢超薄翻斗鞋柜17cm窄家用门口省空间", "price": "1550", "want": "220", "create": "扬盈旗舰店"], ["title": "家里安监控买多了，剩下几个摄像头，4G版的", "price": "189", "want": "75", "create": "大妞小妞嘻嘻嘻"], ["title": "SwiftUI实战班全套课程，强烈推荐！", "price": "199", "want": "15", "create": "子松"]]
let array5 = ["蜜柚香甜", "小江睡不着", "手工设计", "晚风中的蝉鸣", "赛博朋克", "中国万岁", "Jackson"]
let array6 = [["title": "找人帮忙", "subTitle": "持证服务更靠谱"], ["title": "找份兼职", "subTitle": "薪资担保岗位真"], ["title": "附近回收", "subTitle": "免费上门更省心"]]
let array7 = [Color.green, Color.orange, Color.red]
let array8 = ["整租", "合租", "千元房", "全部"]
let array9 = ["闲鱼小站", "低价卡券", "民宿短租", "搬家拉货", "演出票务", "同城跑腿"]
let colors = [Color.red, Color.purple, Color.red, Color.orange, Color.teal, Color.brown]

struct ContentView: View {
    @State var tabSwitch = 1
    @State var selectedTab = 0
    var body: some View {
        //整体有五个界面，因此使用TabView
        //$selectedTab用来设置选中哪一项，选中项图标高亮，未选中项图标灰显
        TabView(selection: $selectedTab) {
            /*
             分成三部分
             1. 标题：登录、Tab切换按钮、直播
             2. 搜索：搜索框、分类
             3. 界面内容显示：通过tabSwitch切换不同的界面
             */
            VStack {
                /*
                 1. 标题
                 */
                //使用HStack，因为需要水平布局
                HStack {
                    Image(uiImage: UIImage.init(named: "signIn")!)//设置登录图片
                    Spacer()//设置距离
                    //通过ForEach显示多个Tab切换按钮
                    ForEach(array.indices, id: \.self) { i in
                        Button {
                            //使用默认动画，点击后拿到当前按钮的tabSwitch
                            withAnimation {
                                tabSwitch = i
                            }
                        } label: {
                            Text(array[i])
                        }
                        //下面对按钮样式进行设置
                        //选中的tabSwitch如果就是当前的i,那么就高亮显示。否则灰显
                        .foregroundColor(tabSwitch == i ? .black : .gray).padding(5).font(Font.system(size: 20, weight: tabSwitch == i ? .bold: .regular))
                    }
                    Spacer()
                    //直播图标
                    Image(uiImage: UIImage.init(named: "live")!)
                }.padding(EdgeInsets.init(top: 36, leading: 0, bottom: 0, trailing: 0))
                
                /*
                 2. 搜索
                 */
                //使用HStack，因为需要水平布局
                HStack {
                    //这里将整体的搜索框都作为一个按钮，点击任何地方都可以起作用
                    Button {
                        print("search")
                    } label: {
                        //扫描按钮
                        Button {
                            print("scan")
                        } label: {
                            Image(uiImage: UIImage.init(named: "scan")!)
                        }.padding(EdgeInsets.init(top: 0, leading: 10, bottom: 0, trailing: 0))
                        //这里是设置了竖线，所以文本为空，仅设置背景色
                        Text("").frame(width: 0.5, height: 18).background(.gray.opacity(0.5))
                        //设置占位文字。为了演示这里使用了Text，实际上应该使用TextField
                        Text("搜索宝贝/鱼塘/用户").foregroundColor(.gray)
                        Spacer()
                        /*这里需要注意文本视图的设置
                         foregroundColor:文本颜色
                         opacity：透明度
                         background：背景颜色。
                         cornerRadius：边框圆角
                         padding：内边距
                         */
                        Text("搜索").foregroundColor(.black.opacity(0.6)).padding(EdgeInsets.init(top: 10, leading: 14, bottom: 10, trailing: 14)).background(.yellow).cornerRadius(20)
                    }
                    //覆盖一个边框
                    .overlay(
                        RoundedRectangle(cornerRadius: 20).stroke(.yellow, lineWidth: 3)
                    )
                    //分类图标
                    Image(uiImage: UIImage.init(named: "classes")!)
                }
                
                /*
                 3. 内容
                 通过tabSwitch来选择不同的内容
                 */
                TabView(selection: $tabSwitch) {
                    attentionView().tag(0)//关注
                    recommendView().tag(1)//推荐
                    localityView().tag(2)//本地
                }
                //设置TabView的类型，PageTabViewStyle表示分页
                //indexDisplayMode设置不显示小白点
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)).ignoresSafeArea()
            }.padding().ignoresSafeArea()//忽视安全区域
                .tabItem {
                if self.selectedTab == 0 {
                    Image("tab1_select")
                } else {
                    Image("tab1_normal")
                }
                Text("闲鱼")
            }.tag(0)//不同的TabView视图设置不同的标签
            
            //其他四个视图都设置为空视图
            /*
             VStack{}里是空的，因此视图内没有内容
             仅仅通过tabItem给每一项设置了显示
             */
            VStack{}.tabItem {
                if self.selectedTab == 1 {
                    Image("tab2_select")
                } else {
                    Image("tab2_normal")
                }
                Text("会玩")
            }.tag(1)
            //发布视图仅设置图标
            VStack{}.tabItem {
                
                Label("", systemImage: "plus.circle.fill")//plus.circle
            }.tag(2)
            VStack{}.tabItem {
                if self.selectedTab == 3 {
                    Image("tab4_select")
                } else {
                    Image("tab4_normal")
                }
                Text("消息")
            }.tag(3)
            VStack{}.tabItem {
                if self.selectedTab == 4 {
                    Image("tab5_select")
                } else {
                    Image("tab5_normal")
                }
                Text("我的")
            }.tag(4).badge(10)
        }.accentColor(.black).font(Font.system(size: 16))
    }
}

//关注
struct attentionView: View {
    var body: some View {
        //使用VStack垂直布局，设置间距为16
        VStack(spacing: 16) {
            //常访问的人文本视图
            HStack {
                Text("常访问的人").font(.footnote).foregroundColor(.gray)
                //设置右边空视图
                Spacer()
            }
            //因为要显示多个视图并且可以滚动，可以使用ScrollView实现。
            //.horizontal表示水平滚动
            ScrollView(.horizontal, showsIndicators: false) {
                //水平布局
                HStack {
                    ForEach(array5, id: \.self) { str in
                        //每个访问的人，进行垂直布局，设置图标和文本
                        VStack {
                            Image(uiImage: UIImage.init(named: "userHead")!).resizable().frame(width: 44, height: 44)
                            //lineLimit设置最大行数为1，如果超出视图大小，则显示为...
                            Text(str).foregroundColor(.gray).font(.callout).lineLimit(1)
                        }.frame(width: 70)//每个视图的宽度
                    }
                }
            }
            //多个视图滚动显示，使用ScrollView
            ScrollView {
                //动态添加多个视图
                ForEach(array4, id: \.self) { dic in
                    //每个视图都是垂直布局，alignment设置对齐方式
                    //分为三部分：1.用户信息；2. 宝贝描述；3. 宝贝图片
                    VStack(alignment: .leading) {
                        //1. 用户信息，水平布局
                        HStack {
                            //用户头像
                            Image(uiImage: UIImage.init(named: "userHead")!).resizable().frame(width: 32, height: 32)
                            //用户信息显示
                            VStack(alignment: .leading) {
                                Text(dic["create"]!)//字典获取的是可选项。易理解
                                Text("1小时前发布").foregroundColor(.gray).font(.footnote)
                            }
                            Spacer()
                            //价钱
                            Text("¥"+dic["price"]!).foregroundColor(.red).bold()
                        }
                        //2. 宝贝描述
                        Text("\t\t "+dic["title"]!)
                        //在描述的基础上覆盖一个视图，这里是今日上新
                            .overlay(
                            Text("今日上新").padding(2).background(.green).foregroundColor(.white).font(.footnote).cornerRadius(4), alignment: .topLeading
                        )
                        //3. 宝贝图片
                        Image(uiImage: UIImage.init(named: "logicImg")!).resizable().cornerRadius(10)
                        Spacer(minLength: 15)
                        //分割线
                        Divider()
                        Spacer(minLength: 15)
                    }
                }
            }
        }
    }
}

//推荐
struct recommendView: View {
    @State var typeSwitch = 0

    var body: some View {
        //整体上可以垂直滚动，所以使用ScrollView
        //总共分为三部分，
        ScrollView(showsIndicators: false) {
            Spacer(minLength: 8)//距离顶部距离为8
            VStack {
                //闲鱼优品的介绍
                HStack {
                    Text("闲鱼优品").bold().font(.title2)
                    Text("验货包真｜全国包邮｜品质包退").padding(3).background(.orange.opacity(0.3)).cornerRadius(8).font(.footnote)
                    Spacer()
                    Button("更多 >") {
                        print("more")
                    }.foregroundColor(.gray).font(.caption).padding(EdgeInsets.init(top: 8, leading: 10, bottom: 8, trailing: 10)).background(.white).cornerRadius(16)
                }
                //水平布局多个视图，每个视图都显示图片+文本
                HStack {
                    ForEach(array1, id: \.self) { dic in
                        VStack {
                            Image(uiImage: UIImage.init(named: "img\(array1.firstIndex(of: dic)!+1)")!).resizable().frame(width: 76, height: 76).cornerRadius(50)
                            Text(dic.keys.first!).bold()
                            Text(dic.values.first!).foregroundColor(.gray).font(Font.system(size: 15, weight: .regular))
                        }
                        if array1.firstIndex(of: dic)! != array1.count-1 { Spacer() }
                    }
                }
            }.padding(10).background(.gray.opacity(0.05)).cornerRadius(20)
            Spacer(minLength: 14)
            //表格显示
            //设置三列，之后总共的数据除以3，就是行数
            LazyVGrid(columns: [
                //设置三列
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: 24) {
                //设置每个视图的显示
                ForEach(array2, id: \.self) { dic in
                    HStack(spacing:0) {
                        VStack(alignment: .leading, spacing: 3) {
                            Text(dic.keys.first!).bold()
                            Text(dic.values.first!).foregroundColor(colors[array2.firstIndex(of: dic)!]).font(Font.system(size: 15, weight: .regular))
                        }
                        //通过数组取出每个图片
                        Image(uiImage: UIImage.init(named: "img\(array2.firstIndex(of: dic)!+5)")!)//.resizable().frame(width: 44, height: 44)
                    }
                }
            }.padding(10).background(.gray.opacity(0.05)).cornerRadius(20)//背景颜色为灰色，透明度为0.05
            
            //水平滚动显示多选项，很明显是水平布局
            ScrollView(.horizontal, showsIndicators: false) {
                //布局方式为水平
                VStack(alignment: .weirdAlignment, spacing: 0) {
                    HStack(spacing: 16) {
                        ForEach(array3.indices, id: \.self) { i in
                            //如果在不同的场景下会有多种不同样式的显示，可以使用Group进行包装
                            Group {
                                //选中项，显示为文本，不再点击
                                if i == typeSwitch {
                                    Text(array3[i]).foregroundColor(.black).font(Font.system(size: 21, weight: .bold)).alignmentGuide(.weirdAlignment, computeValue: { d in d[HorizontalAlignment.center] }).transition(AnyTransition.identity)
                                //没有选中，设置为按钮，并且使用默认动画来更改
                                } else {
                                    Button(array3[i]) {
                                        withAnimation {
                                            typeSwitch = i
                                        }
                                    }.foregroundColor(.gray).font(Font.system(size: 18, weight: .regular)).transition(AnyTransition.identity)
                                }
                            }
                        }
                    }.padding(EdgeInsets.init(top: 10, leading: 0, bottom: 0, trailing: 0))
                    //添加选中的线
                    Image(uiImage: UIImage.init(named: "lineIcon")!).alignmentGuide(.weirdAlignment, computeValue: { d in d[HorizontalAlignment.center] }).padding(EdgeInsets.init(top: 0, leading: 0, bottom: 4, trailing: 0))
                }
            }
            
            //整体可以上下滚动，
            ScrollView {
                //每个元素使用表格来显示
                LazyVGrid(columns: [
                    //两列
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], spacing: 24) {
                    /*
                     1. 宝贝图片
                     2. 宝贝描述
                     3. 价钱和想要
                     4. 用户信息
                     */
                    ForEach(array4, id: \.self) { dic in
                        VStack(spacing: 8) {
                            //1. 图片
                            Image(uiImage: UIImage.init(named: "logicImg")!).cornerRadius(10).frame(width: ScreenWidth/2-8*3).clipped()
                            //2. 标题文本
                            Text(dic["title"]!).bold().lineLimit(2)//.padding()
                            //3. 价钱和想要文本，他们作为整体水平布局显示
                            HStack {
                                Text("¥" + dic["price"]!).bold().foregroundColor(.red)
                                Spacer()
                                Text(dic["want"]! + "人想要").foregroundColor(.gray).font(.footnote)
                            }
                            //4. 用户信息显示
                            HStack(spacing: 3) {
                                Image(uiImage: UIImage.init(named: "userHead")!)
                                //同样设置lineLimit
                                Text(dic["create"]!).foregroundColor(.gray).font(.footnote).lineLimit(1)
                                Spacer()
                                //通过设置offset进行相对布局
                                Label {
                                    Text("芝麻信用极好").foregroundColor(.blue).font(.caption).offset(x: -3, y: 0)
                                } icon: {
                                    Image("zhima").offset(x: 3, y: 0)
                                }.padding(EdgeInsets.init(top: 1, leading: 0, bottom: 1, trailing: 0))
                                    //给芝麻信用设置一个边框
                                    .overlay(
                                    RoundedRectangle(cornerRadius: 20).stroke(.gray, lineWidth: 0.5)
                                ).layoutPriority(1)
                            }
                        }
                    }
                }
            }.frame(height: 600)
            Spacer(minLength: 20)
        }
    }
}

//本地
struct localityView: View {
    var body: some View {
        ScrollView {
            //1. 查找选项
            HStack {
                ForEach(array6.indices, id: \.self) { i in
                    VStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                Text(array6[i]["title"]!).fontWeight(.medium)
                                Text(array6[i]["subTitle"]!).foregroundColor(array7[i]).font(.footnote)
                            }
                            Spacer()
                        }.padding(10)
                    }.frame(maxWidth: .infinity).frame(height: 120, alignment: .top).background(array7[i].opacity(0.05)).cornerRadius(6)
                }
            }
            //2. 出租信息
            HStack {
                VStack(alignment: .leading) {
                    HStack(alignment: .lastTextBaseline) {
                        Text("好房出租").fontWeight(.medium)
                        Text("真实房东 免中介费").foregroundColor(.blue).font(.footnote)
                        Spacer()
                    }
                    HStack(spacing: 20) {
                        ForEach(array8, id: \.self) { str in
                            VStack(spacing: 4) {
                                Image(uiImage: UIImage.init(named: "userHead")!).resizable().frame(width: 36, height: 36)
                                Text(str).font(.footnote)
                            }
                        }
                    }
                }
                Button {
                    print("detail")
                } label: {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("人民大会堂")
                            Spacer()
                            Text(">")
                        }
                        HStack(spacing: 0) {
                            Text("23").foregroundColor(.blue)
                            Text("套房源").foregroundColor(.gray)
                        }
                    }
                }.padding(8).background(.white).cornerRadius(30).frame(width: 130)
                
            }.padding(10).background(.blue.opacity(0.05)).cornerRadius(6)
            
            //3. 详细显示
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(array9, id: \.self) { str in
                        VStack(spacing: 4) {
                            Image(uiImage: UIImage.init(named: "img\(array9.firstIndex(of: str)!+5)")!).frame(width: 44).cornerRadius(6)
                            Text(str).font(.footnote).fontWeight(.medium)
                        }
                    }
                }
            }
            
        }
    }
}

//自定义一个水平布局方式
extension HorizontalAlignment {
    //新建一个枚举WeirdAlignment
    private enum WeirdAlignment: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return 0
        }
    }
    //定义(水平布局)
    static let weirdAlignment = HorizontalAlignment(WeirdAlignment.self)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}

