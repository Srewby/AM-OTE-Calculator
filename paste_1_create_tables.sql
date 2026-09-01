-- CreateEnum
CREATE TYPE "Role" AS ENUM ('ADMIN', 'AM');

-- CreateTable
CREATE TABLE "users" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "role" "Role" NOT NULL DEFAULT 'AM',
    "closedRate" DOUBLE PRECISION NOT NULL DEFAULT 1,
    "partnerRate" DOUBLE PRECISION NOT NULL DEFAULT 1,
    "upsellRate" DOUBLE PRECISION NOT NULL DEFAULT 100,
    "orRate" DOUBLE PRECISION NOT NULL DEFAULT 3,
    "licensed" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "monthly_entries" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "month" TEXT NOT NULL,
    "closedVolume" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "closedRate" DOUBLE PRECISION NOT NULL,
    "partnerVolume" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "partnerRate" DOUBLE PRECISION NOT NULL,
    "upsellsAdded" INTEGER NOT NULL DEFAULT 0,
    "upsellsInvoiced" INTEGER NOT NULL DEFAULT 0,
    "upsellRate" DOUBLE PRECISION NOT NULL,
    "orCollected" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "orRate" DOUBLE PRECISION NOT NULL,
    "licensed" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "monthly_entries_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "monthly_entries_userId_month_key" ON "monthly_entries"("userId", "month");

-- AddForeignKey
ALTER TABLE "monthly_entries" ADD CONSTRAINT "monthly_entries_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;
