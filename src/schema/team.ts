import { builder } from '../builder'
import { prisma } from '../db'

builder.prismaObject('Team', {
  name: 'Team',
  fields: t => ({
    id: t.id({ resolve: team => team.id.toString() }),
    userId: t.id({ resolve: team => team.userId.toString() }),
    previousId: t.id({
      resolve: team => team.previousId?.toString(),
      nullable: true
    }),
    name: t.exposeString('name'),
    startedOn: t.field({
      type: 'Date',
      resolve: team => team.startedOn
    }),
    currentlyOn: t.field({
      type: 'Date',
      resolve: team => team.currentlyOn
    }),
    currency: t.exposeString('currency'),
    game: t.exposeString('game', { nullable: true }),
    managerName: t.exposeString('managerName', { nullable: true }),
    createdAt: t.field({
      type: 'DateTime',
      resolve: team => team.createdAt
    })
  })
})

builder.queryFields(t => ({
  teams: t.prismaField({
    type: ['Team'],
    resolve: async (query, _root, _args, _ctx, _info) =>
      prisma.team.findMany({ ...query })
  })
}))
