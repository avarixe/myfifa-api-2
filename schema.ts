import { createSchema } from 'graphql-yoga'

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
      hello: () => 'world'
    }
  }
})

export default schema
