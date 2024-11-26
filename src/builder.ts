import SchemaBuilder from '@pothos/core'
import ErrorsPlugin from '@pothos/plugin-errors'
import PrismaPlugin from '@pothos/plugin-prisma'
import type PrismaTypes from '@pothos/plugin-prisma/generated'
import { DateResolver, DateTimeResolver } from 'graphql-scalars'
import { prisma } from './db'

export const builder = new SchemaBuilder<{
  PrismaTypes: PrismaTypes
  Scalars: {
    Date: {
      Input: Date
      Output: Date
    }
    DateTime: {
      Input: Date
      Output: Date
    }
  }
}>({
  plugins: [ErrorsPlugin, PrismaPlugin],
  prisma: {
    client: prisma
  },
  errorOptions: {
    defaultTypes: [Error],
    directResult: true
  }
})

builder.objectType(Error, {
  name: 'Error',
  fields: t => ({
    message: t.exposeString('message')
  })
})

builder.queryType({})
builder.mutationType({})

builder.addScalarType('Date', DateResolver, {})
builder.addScalarType('DateTime', DateTimeResolver, {})
