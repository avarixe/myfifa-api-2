import { builder } from '../builder'
import { prisma } from '../db'

builder.prismaObject('Match', {
  name: 'Match',
  fields: t => ({
    id: t.id({ resolve: match => match.id.toString() }),
    teamId: t.id({ resolve: match => match.teamId.toString() }),
    home: t.exposeString('home'),
    away: t.exposeString('away'),
    season: t.exposeInt('season'),
    competition: t.exposeString('competition', { nullable: true }),
    stage: t.exposeString('stage', { nullable: true }),
    playedOn: t.field({ type: 'Date', resolve: match => match.playedOn }),
    homeScore: t.exposeInt('homeScore'),
    awayScore: t.exposeInt('awayScore'),
    extraTime: t.exposeBoolean('extraTime'),
    friendly: t.exposeBoolean('friendly'),
    createdAt: t.field({
      type: 'DateTime',
      resolve: match => match.createdAt
    }),

    bookings: t.relation('bookings'),
    caps: t.relation('caps'),
    goals: t.relation('goals'),
    penaltyShootout: t.relation('penaltyShootout', { nullable: true })
  })
})

builder.queryFields(t => ({
  match: t.prismaField({
    type: 'Match',
    nullable: true,
    args: {
      id: t.arg.id({ required: true })
    },
    resolve: async (query, _parent, args) =>
      prisma.match.findUnique({ ...query, where: { id: Number(args.id) } })
  })
}))
