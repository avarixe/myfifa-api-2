import { builder } from '../builder'

builder.prismaObject('Substitution', {
  name: 'Substitution',
  fields: t => ({
    id: t.id({ resolve: sub => sub.id.toString() }),
    matchId: t.id({ resolve: sub => sub.matchId.toString() }),
    minute: t.exposeInt('minute'),
    playerId: t.id({ resolve: sub => sub.playerId.toString() }),
    playerName: t.exposeString('playerName'),
    replacementId: t.id({ resolve: sub => sub.replacementId?.toString() }),
    replacedBy: t.exposeString('replacedBy'),
    injury: t.exposeBoolean('injury'),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    })
  })
})
