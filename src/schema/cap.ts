import { builder } from '../builder'

builder.prismaObject('Cap', {
  name: 'Cap',
  fields: t => ({
    id: t.id({ resolve: cap => cap.id.toString() }),
    matchId: t.id({ resolve: cap => cap.matchId.toString() }),
    playerId: t.id({ resolve: cap => cap.playerId.toString() }),
    pos: t.exposeString('pos'),
    start: t.exposeInt('start'),
    stop: t.exposeInt('stop'),
    subbedOut: t.exposeBoolean('subbedOut'),
    rating: t.exposeInt('rating', { nullable: true }),
    ovr: t.exposeInt('ovr', { nullable: true }),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    })
  })
})
