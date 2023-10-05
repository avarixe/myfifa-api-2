import { builder } from '../builder'

builder.prismaObject('Fixture', {
  name: 'Fixture',
  fields: t => ({
    id: t.id({ resolve: row => row.id.toString() }),
    stageId: t.id({ resolve: row => row.stageId.toString() }),
    homeTeam: t.exposeString('homeTeam', { nullable: true }),
    awayTeam: t.exposeString('awayTeam', { nullable: true }),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    }),

    legs: t.relation('legs')
  })
})
