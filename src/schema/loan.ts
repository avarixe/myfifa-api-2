import { builder } from '../builder'

builder.prismaObject('Loan', {
  name: 'Loan',
  fields: t => ({
    id: t.id({ resolve: loan => loan.id.toString() }),
    playerId: t.id({ resolve: loan => loan.playerId.toString() }),
    signedOn: t.field({
      type: 'Date',
      resolve: loan => loan.signedOn,
      nullable: true
    }),
    startedOn: t.field({ type: 'Date', resolve: loan => loan.startedOn }),
    endedOn: t.field({ type: 'Date', resolve: loan => loan.endedOn }),
    origin: t.exposeString('origin'),
    destination: t.exposeString('destination'),
    wagePercentage: t.exposeInt('wagePercentage', { nullable: true }),
    transferFee: t.exposeInt('transferFee', { nullable: true }),
    addonClause: t.exposeInt('addonClause', { nullable: true }),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    })
  })
})
