import { builder } from '../builder'

builder.prismaObject('PenaltyShootout', {
  name: 'PenaltyShootout',
  fields: t => ({
    id: t.id({ resolve: ps => ps.id.toString() }),
    matchId: t.id({ resolve: ps => ps.matchId.toString() }),
    homeScore: t.exposeInt('homeScore'),
    awayScore: t.exposeInt('awayScore'),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    })
  })
})
