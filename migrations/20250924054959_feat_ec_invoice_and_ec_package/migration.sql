-- CreateTable
CREATE TABLE "public"."ec_invoice" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "userEmail" TEXT,
    "userName" TEXT,
    "packageType" TEXT NOT NULL,
    "packageName" TEXT NOT NULL,
    "packagePrice" TEXT NOT NULL,
    "packageQuantity" INTEGER NOT NULL,
    "totalPrice" TEXT NOT NULL,
    "discountCode" TEXT,
    "discountAmount" TEXT,
    "amount" TEXT NOT NULL,
    "isPaid" BOOLEAN NOT NULL DEFAULT false,
    "paidAt" TIMESTAMP(3),
    "paymentMethod" TEXT,
    "paymentDate" TIMESTAMP(3),
    "transactionId" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "ec_invoice_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."ec_package" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "invoiceId" TEXT NOT NULL,
    "packageType" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "isActive" BOOLEAN NOT NULL DEFAULT false,
    "credits" INTEGER NOT NULL DEFAULT 0,
    "usedCredits" INTEGER NOT NULL DEFAULT 0,
    "priorityQueueDays" INTEGER NOT NULL DEFAULT 0,
    "usedPriorityQueueDays" INTEGER NOT NULL DEFAULT 0,
    "expirationDate" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "expiredAt" TIMESTAMP(3),

    CONSTRAINT "ec_package_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ec_package_userId_key" ON "public"."ec_package"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "ec_package_invoiceId_key" ON "public"."ec_package"("invoiceId");

-- CreateIndex
CREATE UNIQUE INDEX "ec_package_packageType_key" ON "public"."ec_package"("packageType");
