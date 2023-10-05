import { builder } from '../builder'
import './competition'
import './contract'
import './fixture'
import './fixtureLeg'
import './injury'
import './loan'
import './player'
import './playerHistory'
import './stage'
import './tableRow'
import './transfer'
import './team'
import { writeFileSync } from 'fs'
import { resolve } from 'path'
import { printSchema } from 'graphql'

export const schema = builder.toSchema({})

writeFileSync(resolve(__dirname, '../../schema.graphql'), printSchema(schema))
