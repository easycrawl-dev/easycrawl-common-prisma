/*
  Warnings:

  - You are about to drop the `ec_task_history` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "public"."ec_task_history";

-- CreateTable
CREATE TABLE "public"."ec_task_record" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "urls" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "completedAt" TIMESTAMP(3),
    "isPublic" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "ec_task_record_pkey" PRIMARY KEY ("id")
);
