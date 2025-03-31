export class TodoItemBean {
  isComplete: boolean
  name: string

  constructor(isComplete: boolean, name: string) {
    this.isComplete = isComplete
    this.name = name
  }
}

