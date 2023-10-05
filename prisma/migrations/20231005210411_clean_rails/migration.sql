/*
  Warnings:

  - You are about to drop the column `current_sign_in_at` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `current_sign_in_ip` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `dark_mode` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `last_sign_in_at` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `last_sign_in_ip` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `remember_created_at` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `sign_in_count` on the `users` table. All the data in the column will be lost.
  - You are about to drop the `active_storage_attachments` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `active_storage_blobs` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `active_storage_variant_records` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ar_internal_metadata` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `schema_migrations` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[next_id]` on the table `caps` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[previous_id]` on the table `contracts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[match_id]` on the table `penalty_shootouts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[previous_id]` on the table `teams` will be added. If there are existing duplicate values, this will fail.
  - Made the column `user_id` on table `access_tokens` required. This step will fail if there are existing NULL values in that column.
  - Made the column `token` on table `access_tokens` required. This step will fail if there are existing NULL values in that column.
  - Made the column `match_id` on table `bookings` required. This step will fail if there are existing NULL values in that column.
  - Made the column `minute` on table `bookings` required. This step will fail if there are existing NULL values in that column.
  - Made the column `player_name` on table `bookings` required. This step will fail if there are existing NULL values in that column.
  - Made the column `match_id` on table `caps` required. This step will fail if there are existing NULL values in that column.
  - Made the column `player_id` on table `caps` required. This step will fail if there are existing NULL values in that column.
  - Made the column `pos` on table `caps` required. This step will fail if there are existing NULL values in that column.
  - Made the column `start` on table `caps` required. This step will fail if there are existing NULL values in that column.
  - Made the column `stop` on table `caps` required. This step will fail if there are existing NULL values in that column.
  - Made the column `ovr` on table `caps` required. This step will fail if there are existing NULL values in that column.
  - Made the column `team_id` on table `competitions` required. This step will fail if there are existing NULL values in that column.
  - Made the column `season` on table `competitions` required. This step will fail if there are existing NULL values in that column.
  - Made the column `name` on table `competitions` required. This step will fail if there are existing NULL values in that column.
  - Made the column `player_id` on table `contracts` required. This step will fail if there are existing NULL values in that column.
  - Made the column `fixture_id` on table `fixture_legs` required. This step will fail if there are existing NULL values in that column.
  - Made the column `stage_id` on table `fixtures` required. This step will fail if there are existing NULL values in that column.
  - Made the column `match_id` on table `goals` required. This step will fail if there are existing NULL values in that column.
  - Made the column `minute` on table `goals` required. This step will fail if there are existing NULL values in that column.
  - Made the column `player_name` on table `goals` required. This step will fail if there are existing NULL values in that column.
  - Made the column `player_id` on table `injuries` required. This step will fail if there are existing NULL values in that column.
  - Made the column `started_on` on table `injuries` required. This step will fail if there are existing NULL values in that column.
  - Made the column `ended_on` on table `injuries` required. This step will fail if there are existing NULL values in that column.
  - Made the column `description` on table `injuries` required. This step will fail if there are existing NULL values in that column.
  - Made the column `player_id` on table `loans` required. This step will fail if there are existing NULL values in that column.
  - Made the column `started_on` on table `loans` required. This step will fail if there are existing NULL values in that column.
  - Made the column `ended_on` on table `loans` required. This step will fail if there are existing NULL values in that column.
  - Made the column `destination` on table `loans` required. This step will fail if there are existing NULL values in that column.
  - Made the column `origin` on table `loans` required. This step will fail if there are existing NULL values in that column.
  - Made the column `team_id` on table `matches` required. This step will fail if there are existing NULL values in that column.
  - Made the column `home` on table `matches` required. This step will fail if there are existing NULL values in that column.
  - Made the column `away` on table `matches` required. This step will fail if there are existing NULL values in that column.
  - Made the column `played_on` on table `matches` required. This step will fail if there are existing NULL values in that column.
  - Made the column `home_score` on table `matches` required. This step will fail if there are existing NULL values in that column.
  - Made the column `away_score` on table `matches` required. This step will fail if there are existing NULL values in that column.
  - Made the column `season` on table `matches` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_id` on table `options` required. This step will fail if there are existing NULL values in that column.
  - Made the column `match_id` on table `penalty_shootouts` required. This step will fail if there are existing NULL values in that column.
  - Made the column `home_score` on table `penalty_shootouts` required. This step will fail if there are existing NULL values in that column.
  - Made the column `away_score` on table `penalty_shootouts` required. This step will fail if there are existing NULL values in that column.
  - Made the column `player_id` on table `player_histories` required. This step will fail if there are existing NULL values in that column.
  - Made the column `recorded_on` on table `player_histories` required. This step will fail if there are existing NULL values in that column.
  - Made the column `ovr` on table `player_histories` required. This step will fail if there are existing NULL values in that column.
  - Made the column `value` on table `player_histories` required. This step will fail if there are existing NULL values in that column.
  - Made the column `team_id` on table `players` required. This step will fail if there are existing NULL values in that column.
  - Made the column `name` on table `players` required. This step will fail if there are existing NULL values in that column.
  - Made the column `pos` on table `players` required. This step will fail if there are existing NULL values in that column.
  - Made the column `ovr` on table `players` required. This step will fail if there are existing NULL values in that column.
  - Made the column `value` on table `players` required. This step will fail if there are existing NULL values in that column.
  - Made the column `birth_year` on table `players` required. This step will fail if there are existing NULL values in that column.
  - Made the column `squad_id` on table `squad_players` required. This step will fail if there are existing NULL values in that column.
  - Made the column `player_id` on table `squad_players` required. This step will fail if there are existing NULL values in that column.
  - Made the column `pos` on table `squad_players` required. This step will fail if there are existing NULL values in that column.
  - Made the column `team_id` on table `squads` required. This step will fail if there are existing NULL values in that column.
  - Made the column `name` on table `squads` required. This step will fail if there are existing NULL values in that column.
  - Made the column `competition_id` on table `stages` required. This step will fail if there are existing NULL values in that column.
  - Made the column `name` on table `stages` required. This step will fail if there are existing NULL values in that column.
  - Made the column `stage_id` on table `table_rows` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_id` on table `teams` required. This step will fail if there are existing NULL values in that column.
  - Made the column `name` on table `teams` required. This step will fail if there are existing NULL values in that column.
  - Made the column `started_on` on table `teams` required. This step will fail if there are existing NULL values in that column.
  - Made the column `currently_on` on table `teams` required. This step will fail if there are existing NULL values in that column.
  - Made the column `currency` on table `teams` required. This step will fail if there are existing NULL values in that column.
  - Made the column `player_id` on table `transfers` required. This step will fail if there are existing NULL values in that column.
  - Made the column `moved_on` on table `transfers` required. This step will fail if there are existing NULL values in that column.
  - Made the column `origin` on table `transfers` required. This step will fail if there are existing NULL values in that column.
  - Made the column `destination` on table `transfers` required. This step will fail if there are existing NULL values in that column.
  - Made the column `full_name` on table `users` required. This step will fail if there are existing NULL values in that column.
  - Made the column `username` on table `users` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "active_storage_attachments" DROP CONSTRAINT "fk_rails_c3b3935057";

-- DropForeignKey
ALTER TABLE "active_storage_variant_records" DROP CONSTRAINT "fk_rails_993965df05";

-- DropIndex
DROP INDEX "index_bookings_on_cap_id";

-- DropIndex
DROP INDEX "index_caps_on_next_id";

-- DropIndex
DROP INDEX "index_contracts_on_previous_id";

-- DropIndex
DROP INDEX "index_goals_on_assist_cap_id";

-- DropIndex
DROP INDEX "index_goals_on_cap_id";

-- DropIndex
DROP INDEX "index_penalty_shootouts_on_match_id";

-- DropIndex
DROP INDEX "index_teams_on_previous_id";

-- AlterTable
ALTER TABLE "access_tokens" ALTER COLUMN "user_id" SET NOT NULL,
ALTER COLUMN "token" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "bookings" ALTER COLUMN "match_id" SET NOT NULL,
ALTER COLUMN "minute" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "player_name" SET NOT NULL;

-- AlterTable
ALTER TABLE "caps" ALTER COLUMN "match_id" SET NOT NULL,
ALTER COLUMN "player_id" SET NOT NULL,
ALTER COLUMN "pos" SET NOT NULL,
ALTER COLUMN "start" SET NOT NULL,
ALTER COLUMN "stop" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "ovr" SET NOT NULL;

-- AlterTable
ALTER TABLE "competitions" ALTER COLUMN "team_id" SET NOT NULL,
ALTER COLUMN "season" SET NOT NULL,
ALTER COLUMN "name" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "contracts" ALTER COLUMN "player_id" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "fixture_legs" ALTER COLUMN "fixture_id" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "fixtures" ALTER COLUMN "stage_id" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "goals" ALTER COLUMN "match_id" SET NOT NULL,
ALTER COLUMN "minute" SET NOT NULL,
ALTER COLUMN "player_name" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "injuries" ALTER COLUMN "player_id" SET NOT NULL,
ALTER COLUMN "started_on" SET NOT NULL,
ALTER COLUMN "ended_on" SET NOT NULL,
ALTER COLUMN "description" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "loans" ALTER COLUMN "player_id" SET NOT NULL,
ALTER COLUMN "started_on" SET NOT NULL,
ALTER COLUMN "ended_on" SET NOT NULL,
ALTER COLUMN "destination" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "origin" SET NOT NULL;

-- AlterTable
ALTER TABLE "matches" ALTER COLUMN "team_id" SET NOT NULL,
ALTER COLUMN "home" SET NOT NULL,
ALTER COLUMN "away" SET NOT NULL,
ALTER COLUMN "played_on" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "home_score" SET NOT NULL,
ALTER COLUMN "away_score" SET NOT NULL,
ALTER COLUMN "season" SET NOT NULL;

-- AlterTable
ALTER TABLE "options" ALTER COLUMN "user_id" SET NOT NULL;

-- AlterTable
ALTER TABLE "penalty_shootouts" ALTER COLUMN "match_id" SET NOT NULL,
ALTER COLUMN "home_score" SET NOT NULL,
ALTER COLUMN "away_score" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "player_histories" ALTER COLUMN "player_id" SET NOT NULL,
ALTER COLUMN "recorded_on" SET NOT NULL,
ALTER COLUMN "ovr" SET NOT NULL,
ALTER COLUMN "value" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "players" ALTER COLUMN "team_id" SET NOT NULL,
ALTER COLUMN "name" SET NOT NULL,
ALTER COLUMN "pos" SET NOT NULL,
ALTER COLUMN "ovr" SET NOT NULL,
ALTER COLUMN "value" SET NOT NULL,
ALTER COLUMN "birth_year" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "squad_players" ALTER COLUMN "squad_id" SET NOT NULL,
ALTER COLUMN "player_id" SET NOT NULL,
ALTER COLUMN "pos" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "squads" ALTER COLUMN "team_id" SET NOT NULL,
ALTER COLUMN "name" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "stages" ALTER COLUMN "competition_id" SET NOT NULL,
ALTER COLUMN "name" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "table_rows" ALTER COLUMN "stage_id" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "teams" ALTER COLUMN "user_id" SET NOT NULL,
ALTER COLUMN "name" SET NOT NULL,
ALTER COLUMN "started_on" SET NOT NULL,
ALTER COLUMN "currently_on" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "currency" SET NOT NULL;

-- AlterTable
ALTER TABLE "transfers" ALTER COLUMN "player_id" SET NOT NULL,
ALTER COLUMN "moved_on" SET NOT NULL,
ALTER COLUMN "origin" SET NOT NULL,
ALTER COLUMN "destination" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "users" DROP COLUMN "current_sign_in_at",
DROP COLUMN "current_sign_in_ip",
DROP COLUMN "dark_mode",
DROP COLUMN "last_sign_in_at",
DROP COLUMN "last_sign_in_ip",
DROP COLUMN "remember_created_at",
DROP COLUMN "sign_in_count",
ALTER COLUMN "full_name" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "username" SET NOT NULL;

-- DropTable
DROP TABLE "active_storage_attachments";

-- DropTable
DROP TABLE "active_storage_blobs";

-- DropTable
DROP TABLE "active_storage_variant_records";

-- DropTable
DROP TABLE "ar_internal_metadata";

-- DropTable
DROP TABLE "schema_migrations";

-- CreateIndex
CREATE UNIQUE INDEX "index_teams_on_next_id" ON "caps"("next_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_contracts_on_previous_id" ON "contracts"("previous_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_penalty_shootouts_on_match_id" ON "penalty_shootouts"("match_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_teams_on_previous_id" ON "teams"("previous_id");

-- AddForeignKey
ALTER TABLE "access_tokens" ADD CONSTRAINT "access_tokens_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "bookings" ADD CONSTRAINT "bookings_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "matches"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "bookings" ADD CONSTRAINT "bookings_cap_id_fkey" FOREIGN KEY ("cap_id") REFERENCES "caps"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "bookings" ADD CONSTRAINT "bookings_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "caps" ADD CONSTRAINT "caps_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "matches"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "caps" ADD CONSTRAINT "caps_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "caps" ADD CONSTRAINT "caps_next_id_fkey" FOREIGN KEY ("next_id") REFERENCES "caps"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "competitions" ADD CONSTRAINT "competitions_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "teams"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "contracts" ADD CONSTRAINT "contracts_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "contracts" ADD CONSTRAINT "contracts_previous_id_fkey" FOREIGN KEY ("previous_id") REFERENCES "contracts"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "fixture_legs" ADD CONSTRAINT "fixture_legs_fixture_id_fkey" FOREIGN KEY ("fixture_id") REFERENCES "fixtures"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "fixtures" ADD CONSTRAINT "fixtures_stage_id_fkey" FOREIGN KEY ("stage_id") REFERENCES "stages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "goals" ADD CONSTRAINT "goals_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "matches"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "goals" ADD CONSTRAINT "goals_cap_id_fkey" FOREIGN KEY ("cap_id") REFERENCES "caps"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "goals" ADD CONSTRAINT "goals_assist_cap_id_fkey" FOREIGN KEY ("assist_cap_id") REFERENCES "caps"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "goals" ADD CONSTRAINT "goals_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "goals" ADD CONSTRAINT "goals_assist_id_fkey" FOREIGN KEY ("assist_id") REFERENCES "players"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "injuries" ADD CONSTRAINT "injuries_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "loans" ADD CONSTRAINT "loans_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "matches" ADD CONSTRAINT "matches_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "teams"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "options" ADD CONSTRAINT "options_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "penalty_shootouts" ADD CONSTRAINT "penalty_shootouts_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "matches"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "player_histories" ADD CONSTRAINT "player_histories_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "players" ADD CONSTRAINT "players_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "teams"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "squad_players" ADD CONSTRAINT "squad_players_squad_id_fkey" FOREIGN KEY ("squad_id") REFERENCES "squads"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "squad_players" ADD CONSTRAINT "squad_players_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "squads" ADD CONSTRAINT "squads_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "teams"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stages" ADD CONSTRAINT "stages_competition_id_fkey" FOREIGN KEY ("competition_id") REFERENCES "competitions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "table_rows" ADD CONSTRAINT "table_rows_stage_id_fkey" FOREIGN KEY ("stage_id") REFERENCES "stages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "teams" ADD CONSTRAINT "teams_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "teams" ADD CONSTRAINT "teams_previous_id_fkey" FOREIGN KEY ("previous_id") REFERENCES "teams"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "transfers" ADD CONSTRAINT "transfers_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE CASCADE ON UPDATE CASCADE;
