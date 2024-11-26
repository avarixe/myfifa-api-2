import { Prisma } from '@prisma/client'
import { builder } from '../builder'
import { prisma } from '../db'

const Team = builder.prismaObject('Team', {
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

const TeamAttributes = builder.inputType('TeamAttributes', {
  fields: t => ({
    name: t.string({ required: true }),
    startedOn: t.field({ type: 'Date', required: true }),
    currentlyOn: t.field({ type: 'Date', required: true }),
    currency: t.string({ required: true }),
    game: t.string(),
    managerName: t.string()
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

builder.mutationFields(t => ({
  addTeam: t.field({
    type: Team,
    args: {
      attributes: t.arg({ type: TeamAttributes, required: true })
    },
    errors: {
      types: [Error]
    },
    resolve: async (_parent, args) => {
      const currentUser = await prisma.user.findFirst()

      const team = await prisma.team.create({
        data: Prisma.validator<Prisma.TeamCreateInput>()({
          user: {
            connect: {
              id: currentUser?.id || 1
            }
          },
          ...args.attributes
        })
      })

      return team
    }
  })
}))
