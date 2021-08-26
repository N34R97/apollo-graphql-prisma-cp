import { gql } from "apollo-server";

export const typeDefs = gql`
  type Query {
    allCompanies: [Company!]!
  }

  type Company {
    id: ID!
    name: String
    addres: String
    account_owner: String!
    account_number: String!
  }

  type Mutation {
    createCompany(
      name: String!
      account_owner: String!
      account_number: String!
    ): Company
  }
`;
