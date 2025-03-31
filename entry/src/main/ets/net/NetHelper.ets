import http from '@ohos.net.http'
import { ResponseBean } from '../bean/ResponseBean'
import Logger from '../util/Logger'

export class NetHelper {
  private httpRequest = http.createHttp()

  async requestNetData(requestUrl: string): Promise<string> {
    let requestOptions: http.HttpRequestOptions = {
      method: http.RequestMethod.GET,
      header: { 'Content-Type': 'application/json;charset=UTF-8' },
      usingCache: true,
      connectTimeout: 50000,
      readTimeout: 50000
    }
    let httpResponse = await this.httpRequest.request(requestUrl, requestOptions)
    let responseCode = httpResponse.responseCode
    Logger.info(`responseCode=${responseCode}`)
    let responseResult = httpResponse.result as string
    Logger.info(`responseResult=${responseResult}`)
    let result: string = ''
    if (responseCode == 200) {
      let responseBean = JSON.parse(responseResult) as ResponseBean
      result = JSON.stringify(responseBean.data)
    }
    return result

  }
}

export default new NetHelper()
