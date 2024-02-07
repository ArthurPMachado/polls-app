/*
  Warnings:

  - You are about to drop the column `createdAt` on the `Poll` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Poll` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Poll" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- CreateTable
CREATE TABLE "Vote" (
    "id" SERIAL NOT NULL,
    "session_id" TEXT NOT NULL,
    "poll_option_id" TEXT NOT NULL,
    "poll_id" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Vote_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Vote_session_id_poll_id_key" ON "Vote"("session_id", "poll_id");

-- AddForeignKey
ALTER TABLE "Vote" ADD CONSTRAINT "Vote_poll_option_id_fkey" FOREIGN KEY ("poll_option_id") REFERENCES "PollOption"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vote" ADD CONSTRAINT "Vote_poll_id_fkey" FOREIGN KEY ("poll_id") REFERENCES "Poll"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
