-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "mobile" INTEGER NOT NULL,
    "password" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "Aadhar" INTEGER,
    "Pan" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Wallet" (
    "id" SERIAL NOT NULL,
    "UserId" INTEGER NOT NULL,
    "money" DOUBLE PRECISION NOT NULL,
    "Btc" DOUBLE PRECISION NOT NULL,
    "Eth" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Wallet_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_mobile_key" ON "User"("mobile");

-- CreateIndex
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");

-- CreateIndex
CREATE UNIQUE INDEX "User_Aadhar_key" ON "User"("Aadhar");

-- CreateIndex
CREATE UNIQUE INDEX "User_Pan_key" ON "User"("Pan");

-- AddForeignKey
ALTER TABLE "Wallet" ADD CONSTRAINT "Wallet_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
