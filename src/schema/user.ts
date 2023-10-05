import { builder } from '../builder'

builder.prismaObject('User', {
  name: 'User',
  fields: t => ({
    id: t.id({ resolve: user => user.id.toString() }),
    email: t.exposeString('email'),
    username: t.exposeString('username'),
    fullName: t.exposeString('fullName'),
    admin: t.exposeBoolean('admin'),

    teams: t.relation('teams')
  })
})
