import { builder } from '../builder'

builder.prismaObject('SquadPlayer', {
  name: 'SquadPlayer',
  fields: t => ({
    id: t.id({ resolve: squadPlayer => squadPlayer.id.toString() }),
    squadId: t.id({ resolve: squadPlayer => squadPlayer.squadId.toString() }),
    playerId: t.id({ resolve: squadPlayer => squadPlayer.playerId.toString() }),
    pos: t.exposeString('pos'),
    createdAt: t.field({
      type: 'DateTime',
      resolve: squadPlayer => squadPlayer.createdAt
    }),

    player: t.relation('player')
  })
})
