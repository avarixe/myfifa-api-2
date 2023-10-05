import { builder } from '../builder'
import { prisma } from '../db'

builder.prismaObject('Squad', {
  name: 'Squad',
  fields: t => ({
    id: t.id({ resolve: squad => squad.id.toString() }),
    teamId: t.id({ resolve: squad => squad.teamId.toString() }),
    name: t.exposeString('name'),
    createdAt: t.field({
      type: 'DateTime',
      resolve: squad => squad.createdAt
    }),

    squadPlayers: t.relation('squadPlayers')
  })
})

builder.queryFields(t => ({
  squad: t.prismaField({
    type: 'Squad',
    nullable: true,
    args: {
      id: t.arg.id({ required: true })
    },
    resolve: async (query, _parent, args) =>
      prisma.squad.findUnique({ ...query, where: { id: Number(args.id) } })
  })
}))
