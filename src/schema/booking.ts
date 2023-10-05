import { builder } from '../builder'

builder.prismaObject('Booking', {
  name: 'Booking',
  fields: t => ({
    id: t.id({ resolve: booking => booking.id.toString() }),
    matchId: t.id({ resolve: booking => booking.matchId.toString() }),
    minute: t.exposeInt('minute'),
    playerId: t.id({
      resolve: booking => booking.playerId?.toString(),
      nullable: true
    }),
    playerName: t.exposeString('playerName'),
    redCard: t.exposeBoolean('redCard'),
    home: t.exposeBoolean('home'),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    })
  })
})
