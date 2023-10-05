import { builder } from '../builder'

builder.prismaObject('Contract', {
  name: 'Contract',
  fields: t => ({
    id: t.id({ resolve: contract => contract.id.toString() }),
    playerId: t.id({ resolve: contract => contract.playerId.toString() }),
    previousId: t.id({
      resolve: contract => contract.previousId?.toString(),
      nullable: true
    }),
    signedOn: t.field({
      type: 'Date',
      resolve: contract => contract.signedOn,
      nullable: true
    }),
    startedOn: t.field({
      type: 'Date',
      resolve: contract => contract.startedOn,
      nullable: true
    }),
    endedOn: t.field({
      type: 'Date',
      resolve: contract => contract.endedOn,
      nullable: true
    }),
    wage: t.exposeInt('wage', { nullable: true }),
    signingBonus: t.exposeInt('signingBonus', { nullable: true }),
    releaseClause: t.exposeInt('releaseClause', { nullable: true }),
    performanceBonus: t.exposeInt('performanceBonus', { nullable: true }),
    bonusReq: t.exposeInt('bonusReq', { nullable: true }),
    bonusReqType: t.exposeString('bonusReqType', { nullable: true }),
    conclusion: t.exposeString('conclusion', { nullable: true }),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    }),

    previous: t.relation('previous', { nullable: true }),
    renewal: t.relation('renewal', { nullable: true })
  })
})
