-- CreateTable
CREATE TABLE "Company" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "address" TEXT,
    "account_owner" TEXT NOT NULL,
    "account_number" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "TCP" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "ci" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "license" TEXT NOT NULL,
    "activitie" TEXT NOT NULL,
    "account_number" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Contract" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "contract_number" TEXT NOT NULL,
    "eventual" BOOLEAN NOT NULL DEFAULT false,
    "product" TEXT NOT NULL,
    "companyId" INTEGER,
    "tcpId" INTEGER,
    "signature_date" DATETIME NOT NULL,
    "due_date" DATETIME NOT NULL,
    FOREIGN KEY ("companyId") REFERENCES "Company" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY ("tcpId") REFERENCES "TCP" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Company.name_unique" ON "Company"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Company.account_owner_unique" ON "Company"("account_owner");

-- CreateIndex
CREATE UNIQUE INDEX "Company.account_number_unique" ON "Company"("account_number");

-- CreateIndex
CREATE UNIQUE INDEX "TCP.name_unique" ON "TCP"("name");

-- CreateIndex
CREATE UNIQUE INDEX "TCP.ci_unique" ON "TCP"("ci");

-- CreateIndex
CREATE UNIQUE INDEX "TCP.phone_unique" ON "TCP"("phone");

-- CreateIndex
CREATE UNIQUE INDEX "TCP.license_unique" ON "TCP"("license");

-- CreateIndex
CREATE UNIQUE INDEX "TCP.account_number_unique" ON "TCP"("account_number");
