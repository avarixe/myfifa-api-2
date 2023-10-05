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
    }),

    competitions: t.relation('competitions'),
    players: t.relation('players'),
    matches: t.relation('matches'),
    squads: t.relation('squads'),
    previous: t.relation('previous', { nullable: true }),
    next: t.relation('next', { nullable: true })
  })
})

builder.queryFields(t => ({
  teams: t.prismaField({
    type: ['Team'],
    resolve: (query, _root, _args, _ctx, _info) =>
      prisma.team.findMany({ ...query })
  }),
  team: t.prismaField({
    type: 'Team',
    nullable: true,
    args: {
      id: t.arg.id({ required: true })
    },
    resolve: async (query, _parent, args) =>
      prisma.team.findUnique({ ...query, where: { id: Number(args.id) } })
  })
}))
