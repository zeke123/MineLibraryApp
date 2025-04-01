import { TodoBean } from '../bean/TodoBean';
import TodoListViewModel from '../model/TodoListViewModel';
import Logger from '../util/Logger';

@Entry
@Component
struct Index {
  @State todoBean: TodoBean = new TodoBean()

  aboutToAppear(): void {
    TodoListViewModel.onRequestTodoList().then((todoBean) => {
      this.todoBean = todoBean
      let name = todoBean.name

      let hi:string = "hello"
      hi = "hello world"




    })
  }

  build() {
    RelativeContainer() {
      Text(this.todoBean.name)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}