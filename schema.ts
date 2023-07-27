import { createSchema } from 'graphql-yoga'
import database from './database'

const schema = createSchema({
  typeDefs: `
    type Query {
      hello: String
      teams: [Team!]
      team(id: ID!): Team
    }

    type Team {
      id: ID!
      name: String!
      players: [Player!]
    }

    type Player {
      id: ID!
      teamId: ID!
      name: String!
      pos: String!
      ovr: Int!
    }
  `,
  resolvers: {
    Query: {
      hello: () => 'world',
      teams: () => {
        return database.models.team.findAll()
      },
      team: (_, { id }) => {
        return database.models.team.findByPk(parseInt(id))
      }
    },
    Team: {
      players: team => {
        return team.getPlayers()
      }
    }
  }
})

export default schema
