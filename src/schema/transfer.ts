import { builder } from '../builder'

builder.prismaObject('Transfer', {
  name: 'Transfer',
  fields: t => ({
    id: t.id({ resolve: transfer => transfer.id.toString() }),
    playerId: t.id({ resolve: transfer => transfer.playerId.toString() }),
    signedOn: t.field({
      type: 'Date',
      resolve: transfer => transfer.signedOn,
      nullable: true
    }),
    movedOn: t.field({ type: 'Date', resolve: transfer => transfer.movedOn }),
    origin: t.exposeString('origin'),
    destination: t.exposeString('destination'),
    fee: t.exposeInt('fee', { nullable: true }),
    tradedPlayer: t.exposeString('tradedPlayer', { nullable: true }),
    addonClause: t.exposeInt('addonClause', { nullable: true }),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    })
  })
})
