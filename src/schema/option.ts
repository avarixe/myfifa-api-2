import { builder } from '../builder'

builder.prismaObject('Option', {
  name: 'Option',
  fields: t => ({
    id: t.id({ resolve: option => option.id.toString() }),
    userId: t.id({ resolve: option => option.userId.toString() }),
    category: t.exposeString('category', { nullable: true }),
    value: t.exposeString('value', { nullable: true })
  })
})
