import { builder } from '../builder'

builder.prismaObject('Stage', {
  name: 'Stage',
  fields: t => ({
    id: t.id({ resolve: stage => stage.id.toString() }),
    competitionId: t.id({ resolve: stage => stage.competitionId.toString() }),
    name: t.exposeString('name'),
    numTeams: t.exposeInt('numTeams', { nullable: true }),
    numFixtures: t.exposeInt('numFixtures', { nullable: true }),
    table: t.exposeBoolean('table'),
    createdAt: t.field({
      type: 'DateTime',
      resolve: player => player.createdAt
    }),

    fixtures: t.relation('fixtures'),
    tableRows: t.relation('tableRows')
  })
})
