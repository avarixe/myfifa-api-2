import { builder } from '../builder'

builder.prismaObject('TableRow', {
  name: 'TableRow',
  fields: t => ({
    id: t.id({ resolve: row => row.id.toString() }),
    stageId: t.id({ resolve: row => row.stageId.toString() }),
    name: t.exposeString('name', { nullable: true }),
    wins: t.exposeInt('wins', { nullable: true }),
    draws: t.exposeInt('draws', { nullable: true }),
    losses: t.exposeInt('losses', { nullable: true }),
    goalsFor: t.exposeInt('goalsFor', { nullable: true }),
    goalsAgainst: t.exposeInt('goalsAgainst', { nullable: true }),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    })
  })
})
