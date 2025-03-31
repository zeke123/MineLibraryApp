export class ResponseBean {
  code: string
  status: string
  data: string

  constructor(code: string, status: string, data: string) {
    this.code = code
    this.status = status
    this.data = data
  }
}