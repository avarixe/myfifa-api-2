import express, { Express, Request, Response } from 'express'
import morgan from 'morgan'
import 'dotenv/config'

import { createYoga } from 'graphql-yoga'
import schema from './schema'
import database from './database'

const yoga = createYoga({ schema })

const app: Express = express();
const port = process.env.PORT || 3000;

app.use(morgan('combined'));

app.use(yoga.graphqlEndpoint, yoga)

app.get('/', (req: Request, res: Response) => {
  res.redirect('/graphql')
});

app.listen(port, async () => {
  try {
    await database.authenticate()
    console.log('Connection has been established successfully')
  } catch (err) {
    console.error('Unable to connect to the database:', err)
  }

  console.log(`[server]: Running a GraphQL API server at http://localhost:${port}/graphql`);
});
