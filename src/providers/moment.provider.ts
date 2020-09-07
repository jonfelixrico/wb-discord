import { Provider } from '@nestjs/common'
import moment from 'moment-timezone'

export const MOMENT_PROVIDER = 'MOMENT_PROVIDER'

export default {
  provide: MOMENT_PROVIDER,
  useFactory: () => {
    moment.tz.setDefault('Asia/Manila')
    return moment
  },
} as Provider
