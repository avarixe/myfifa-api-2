import { builder } from '../builder'

builder.prismaObject('Goal', {
  name: 'Goal',
  fields: t => ({
    id: t.id({ resolve: goal => goal.id.toString() }),
    matchId: t.id({ resolve: goal => goal.matchId.toString() }),
    minute: t.exposeInt('minute'),
    capId: t.id({
      resolve: goal => goal.capId?.toString(),
      nullable: true
    }),
    assistCapId: t.id({
      resolve: goal => goal.assistCapId?.toString(),
      nullable: true
    }),
    playerId: t.id({
      resolve: goal => goal.playerId?.toString(),
      nullable: true
    }),
    playerName: t.exposeString('playerName'),
    assistId: t.id({
      resolve: goal => goal.assistId?.toString(),
      nullable: true
    }),
    assistedBy: t.exposeString('assistedBy', { nullable: true }),
    home: t.exposeBoolean('home'),
    ownGoal: t.exposeBoolean('ownGoal'),
    penalty: t.exposeBoolean('penalty'),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    })
  })
})
