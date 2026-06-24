-- AlterTable
ALTER TABLE "access_requests" ADD COLUMN     "requestType" TEXT NOT NULL DEFAULT 'view';

-- AlterTable
ALTER TABLE "user_folder_access" ADD COLUMN     "canUpload" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "canView" BOOLEAN NOT NULL DEFAULT true;
