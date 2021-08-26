import { gql } from "apollo-server";
import { PrismaClient } from ".prisma/client";

const prisma = new PrismaClient();

export const resolvers = {
  Query: {
    allCompanies: () => {
      return prisma.company.findMany();
    },
  },
  Mutation: {
    createCompany: (
      parent: any,
      args: { name: string; account_owner: string; account_number: string }
    ) => {
      return prisma.company.create({
        data: {
          name: args.name,
          account_owner: args.account_owner,
          account_number: args.account_number,
        },
      });
    },
  },
};
