-- CreateTable
CREATE TABLE "public"."ec_user_api_key" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "apiKey" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "isExpired" BOOLEAN NOT NULL DEFAULT false,
    "expiredAt" TIMESTAMP(3),

    CONSTRAINT "ec_user_api_key_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ec_user_api_key_apiKey_key" ON "public"."ec_user_api_key"("apiKey");
