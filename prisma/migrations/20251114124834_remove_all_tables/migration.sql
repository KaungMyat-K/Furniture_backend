/*
  Warnings:

  - You are about to drop the `Category` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Image` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Order` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Otp` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Product` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ProductOnOrder` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Tag` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Taggable` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Type` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Image" DROP CONSTRAINT "Image_productId_fkey";

-- DropForeignKey
ALTER TABLE "Order" DROP CONSTRAINT "Order_userId_fkey";

-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_authorId_fkey";

-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_categoryId_fkey";

-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_typeId_fkey";

-- DropForeignKey
ALTER TABLE "Product" DROP CONSTRAINT "Product_categoryId_fkey";

-- DropForeignKey
ALTER TABLE "Product" DROP CONSTRAINT "Product_typeId_fkey";

-- DropForeignKey
ALTER TABLE "ProductOnOrder" DROP CONSTRAINT "ProductOnOrder_orderId_fkey";

-- DropForeignKey
ALTER TABLE "ProductOnOrder" DROP CONSTRAINT "ProductOnOrder_productId_fkey";

-- DropForeignKey
ALTER TABLE "Taggable" DROP CONSTRAINT "Taggable_tagId_fkey";

-- DropTable
DROP TABLE "Category";

-- DropTable
DROP TABLE "Image";

-- DropTable
DROP TABLE "Order";

-- DropTable
DROP TABLE "Otp";

-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "Product";

-- DropTable
DROP TABLE "ProductOnOrder";

-- DropTable
DROP TABLE "Tag";

-- DropTable
DROP TABLE "Taggable";

-- DropTable
DROP TABLE "Type";

-- DropTable
DROP TABLE "User";

-- DropEnum
DROP TYPE "Role";

-- DropEnum
DROP TYPE "Status";
