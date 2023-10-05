import { builder } from '../builder'
import { prisma } from '../db'

builder.prismaObject('Player', {
  name: 'Player',
  fields: t => ({
    id: t.id({ resolve: player => player.id.toString() }),
    teamId: t.id({ resolve: player => player.teamId.toString() }),
    name: t.exposeString('name'),

    nationality: t.exposeString('nationality', { nullable: true }),
    pos: t.exposeString('pos'),
    secPos: t.exposeStringList('secPos'),
    ovr: t.exposeInt('ovr'),
    value: t.exposeInt('value'),
    birthYear: t.exposeInt('birthYear'),
    status: t.exposeString('status', { nullable: true }),
    youth: t.exposeBoolean('youth'),
    kitNo: t.exposeInt('kitNo', { nullable: true }),
    // TODO
    // coverage: t.field({
    //   type: 'Coverage',
    //   resolve: player => player.coverage
    // })
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    })
  })
})

builder.queryFields(t => ({
  player: t.prismaField({
    type: 'Player',
    nullable: true,
    args: {
      id: t.arg.id({ required: true })
    },
    resolve: async (query, _parent, args) =>
      prisma.player.findUnique({ ...query, where: { id: Number(args.id) } })
  })
}))
