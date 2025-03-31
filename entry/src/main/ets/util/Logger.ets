import { hilog } from '@kit.PerformanceAnalysisKit';

class Logger {
  private format: string = '%{public}s';
  private domain: number;
  private prefix: string;

  constructor(prefix: string = 'MineLibraryApp', domain: number = 0x1100) {
    this.prefix = prefix;
    this.domain = domain;
  }

  async debug(...args: string[]): Promise<void> {
    hilog.debug(this.domain, this.prefix, this.format, args);
  }

  async info(...args: string[]): Promise<void> {
    hilog.info(this.domain, this.prefix, this.format, args);
  }

  async warn(...args: string[]): Promise<void> {
    hilog.warn(this.domain, this.prefix, this.format, args);
  }

  async error(...args: string[]): Promise<void> {
    hilog.error(this.domain, this.prefix, this.format, args);
  }
}

export default new Logger('MineLibraryApp');