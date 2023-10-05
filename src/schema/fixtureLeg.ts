import { builder } from '../builder'

builder.prismaObject('FixtureLeg', {
  name: 'FixtureLeg',
  fields: t => ({
    id: t.id({ resolve: row => row.id.toString() }),
    fixtureId: t.id({ resolve: row => row.fixtureId.toString() }),
    homeScore: t.exposeString('homeScore', { nullable: true }),
    awayScore: t.exposeString('awayScore', { nullable: true }),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    })
  })
})
