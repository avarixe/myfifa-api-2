import { builder } from '../builder'
import './contract'
import './injury'
import './loan'
import './player'
import './playerHistory'
import './transfer'
import './team'
import { writeFileSync } from 'fs'
import { resolve } from 'path'
import { printSchema } from 'graphql'

export const schema = builder.toSchema({})

writeFileSync(resolve(__dirname, '../../schema.graphql'), printSchema(schema))
