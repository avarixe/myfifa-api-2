import SchemaBuilder from '@pothos/core'
import PrismaPlugin from '@pothos/plugin-prisma'
import type PrismaTypes from '@pothos/plugin-prisma/generated'
import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

const builder = new SchemaBuilder<{
  PrismaTypes: PrismaTypes
}>({
  plugins: [PrismaPlugin],
  prisma: {
    client: prisma
  }
})

builder.prismaObject('Team', {
  name: 'Team',
  fields: t => ({
    id: t.id({
      resolve: team => parseInt(team.id.toString())
    }),
    name: t.exposeString('name')
  })
})

builder.queryType({
  fields: t => ({
    teams: t.prismaField({
      type: ['Team'],
      resolve: async (query, _root, _args, _ctx, _info) =>
        prisma.team.findMany({ ...query })
    })
  })
})

export default builder.toSchema()
