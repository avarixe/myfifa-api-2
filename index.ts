import express, { Express, Request, Response } from 'express'
import morgan from 'morgan'
import dotenv from 'dotenv'

import { createYoga } from 'graphql-yoga'
import { schema } from './schema'

dotenv.config();

const yoga = createYoga({ schema })

const app: Express = express();
const port = process.env.PORT || 3000;

app.use(morgan('combined'));

app.use(yoga.graphqlEndpoint, yoga)

app.get('/', (req: Request, res: Response) => {
  res.send('Express + sdfg Server');
});

app.listen(port, () => {
  console.log(`[server]: Running a GraphQL API server at http://localhost:${port}/graphql`);
});
