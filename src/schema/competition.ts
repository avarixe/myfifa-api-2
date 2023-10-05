import { builder } from '../builder'
import { prisma } from '../db'

builder.prismaObject('Competition', {
  name: 'Competition',
  fields: t => ({
    id: t.id({ resolve: comp => comp.id.toString() }),
    teamId: t.id({ resolve: comp => comp.teamId.toString() }),
    season: t.exposeInt('season'),
    name: t.exposeString('name'),
    champion: t.exposeString('champion', { nullable: true }),
    createdAt: t.field({
      type: 'DateTime',
      resolve: comp => comp.createdAt
    }),

    stages: t.relation('stages')
  })
})

builder.queryFields(t => ({
  competition: t.prismaField({
    type: 'Competition',
    nullable: true,
    args: {
      id: t.arg.id({ required: true })
    },
    resolve: async (query, _parent, args) =>
      prisma.competition.findUnique({
        ...query,
        where: { id: Number(args.id) }
      })
  })
}))
