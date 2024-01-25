import { Log } from "@abner/log"

@Entry
@Component
struct Index {
  build() {
    Row() {
      Column() {
        Text("以下打印可在控制台中查看")
          .fontSize(14)
          .fontColor(Color.Red)

        Text("打印普通日志")
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            Log.info("我是一个普通的日志")
          })
        Text("打印Json对象")
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 20 })
          .onClick(() => {
            Log.info({ "code": 0, "message": "打印一个json", "data": { "test": "测试数据" } })
          })
        Text("打印Json字符串")
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 20 })
          .onClick(() => {
            Log.info(JSON.stringify({ "code": 0, "message": "打印一个json字符串", "data": { "test": "测试数据" } }))
          })
        Text("打印Error带位置")
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 20 })
          .onClick(() => {
            Log.error({ "code": 0, "message": "打印一个json", "data": { "test": "测试数据" } })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}