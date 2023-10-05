import { builder } from '../builder'

builder.prismaObject('PlayerHistory', {
  name: 'PlayerHistory',
  fields: t => ({
    id: t.id({ resolve: history => history.id.toString() }),
    playerId: t.id({ resolve: history => history.playerId.toString() }),
    recordedOn: t.field({
      type: 'Date',
      resolve: history => history.recordedOn
    }),
    ovr: t.exposeInt('ovr'),
    value: t.exposeInt('value'),
    kitNo: t.exposeInt('kitNo', { nullable: true }),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    })
  })
})
