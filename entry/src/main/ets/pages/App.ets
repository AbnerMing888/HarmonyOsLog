import { Log } from '@abner/log';
import AbilityStage from '@ohos.app.ability.AbilityStage';

export default class App extends AbilityStage {
  onCreate() {
    Log.init({
      tag: "HarmonyOSLog",//打印的标签，默认为： HarmonyOSLog
      domain: 0x0000,//输出日志所对应的业务领域,默认为0x0000
      close: false,//是否关闭log，不打印
      isHilog: true,//打印类型，默认为true是hilog打印 ，false为console
      showLogLocation: true, //默认不打印，只要在error下才会打印行数
      logSize: 800//日志每次输出大小，最大1024字节
    })
  }
}