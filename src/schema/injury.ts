import { builder } from '../builder'

builder.prismaObject('Injury', {
  name: 'Injury',
  fields: t => ({
    id: t.id({ resolve: injury => injury.id.toString() }),
    playerId: t.id({ resolve: injury => injury.playerId.toString() }),
    startedOn: t.field({ type: 'Date', resolve: injury => injury.startedOn }),
    endedOn: t.field({ type: 'Date', resolve: injury => injury.endedOn }),
    description: t.exposeString('description'),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    })
  })
})
