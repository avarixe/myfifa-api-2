import express, { Express, Request, Response } from 'express'
import morgan from 'morgan'
import 'dotenv/config'

import { createYoga } from 'graphql-yoga'
import schema from './schema'

const yoga = createYoga({ schema })

const app: Express = express()
const port = process.env.PORT || 3000

app.use(morgan('combined'))

app.use(yoga.graphqlEndpoint, yoga)

app.get('/', (req: Request, res: Response) => {
  res.redirect('/graphql')
})

app.listen(port, async () => {
  console.log(
    `[server]: Running a GraphQL API server at http://localhost:${port}/graphql`
  )
})
