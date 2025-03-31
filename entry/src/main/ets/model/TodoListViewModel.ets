import { TodoBean } from '../bean/TodoBean'
import { UrlConstant } from '../common/UrlConstant';
import NetHelper from '../net/NetHelper';
import { JSON } from '@kit.ArkTS';
import Logger from '../util/Logger';

class TodoListViewModel {
  async onRequestTodoList(): Promise<TodoBean> {
    let todoBean = await NetHelper.requestNetData(UrlConstant.TODO_URL)
    let todoBeanData = JSON.parse(todoBean) as TodoBean
    let name = todoBeanData.name
    Logger.info(`name11111=${name}`)
    return todoBeanData;
  }
}

export default new TodoListViewModel()