import { builder } from '../builder'

builder.prismaObject('AccessToken', {
  name: 'AccessToken',
  fields: t => ({
    id: t.id({ resolve: token => token.id.toString() }),
    userId: t.id({ resolve: token => token.userId.toString() }),
    token: t.exposeString('token'),
    expiresAt: t.field({
      type: 'DateTime',
      resolve: token => token.expiresAt,
      nullable: true
    }),
    revokedAt: t.field({
      type: 'DateTime',
      resolve: token => token.revokedAt,
      nullable: true
    }),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    }),

    user: t.relation('user')
  })
})
