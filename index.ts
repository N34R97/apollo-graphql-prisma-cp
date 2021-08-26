import { ApolloServer, gql } from "apollo-server";
import { ApolloServerPluginLandingPageGraphQLPlayground } from "apollo-server-core";
import { typeDefs } from "./graphql/schema_gql";
import { resolvers } from "./graphql/resolvers";

const port = 9812;

new ApolloServer({
  resolvers,
  typeDefs,
  plugins: [ApolloServerPluginLandingPageGraphQLPlayground({})],
}).listen({ port }, () =>
  console.log(`Server ready at: http://localhost:${port}`)
);
