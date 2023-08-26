-- CreateTable
CREATE TABLE "access_tokens" (
    "id" BIGSERIAL NOT NULL,
    "user_id" BIGINT,
    "token" VARCHAR,
    "expires_at" TIMESTAMP(6),
    "revoked_at" TIMESTAMP(6),
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "access_tokens_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "active_storage_attachments" (
    "id" BIGSERIAL NOT NULL,
    "name" VARCHAR NOT NULL,
    "record_type" VARCHAR NOT NULL,
    "record_id" BIGINT NOT NULL,
    "blob_id" BIGINT NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "active_storage_attachments_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "active_storage_blobs" (
    "id" BIGSERIAL NOT NULL,
    "key" VARCHAR NOT NULL,
    "filename" VARCHAR NOT NULL,
    "content_type" VARCHAR,
    "metadata" TEXT,
    "byte_size" BIGINT NOT NULL,
    "checksum" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "service_name" VARCHAR NOT NULL,

    CONSTRAINT "active_storage_blobs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "active_storage_variant_records" (
    "id" BIGSERIAL NOT NULL,
    "blob_id" BIGINT NOT NULL,
    "variation_digest" VARCHAR NOT NULL,

    CONSTRAINT "active_storage_variant_records_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ar_internal_metadata" (
    "key" VARCHAR NOT NULL,
    "value" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "ar_internal_metadata_pkey" PRIMARY KEY ("key")
);

-- CreateTable
CREATE TABLE "bookings" (
    "id" BIGSERIAL NOT NULL,
    "match_id" BIGINT,
    "minute" INTEGER,
    "player_id" BIGINT,
    "red_card" BOOLEAN NOT NULL DEFAULT false,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "player_name" VARCHAR,
    "home" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "bookings_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "caps" (
    "id" BIGSERIAL NOT NULL,
    "match_id" BIGINT,
    "player_id" BIGINT,
    "pos" VARCHAR,
    "start" INTEGER DEFAULT 0,
    "stop" INTEGER DEFAULT 90,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "subbed_out" BOOLEAN NOT NULL DEFAULT false,
    "rating" INTEGER,
    "ovr" INTEGER,

    CONSTRAINT "caps_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "competitions" (
    "id" BIGSERIAL NOT NULL,
    "team_id" BIGINT,
    "season" INTEGER,
    "name" VARCHAR,
    "champion" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "competitions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "contracts" (
    "id" BIGSERIAL NOT NULL,
    "player_id" BIGINT,
    "signed_on" DATE,
    "wage" INTEGER,
    "signing_bonus" INTEGER,
    "release_clause" INTEGER,
    "performance_bonus" INTEGER,
    "bonus_req" INTEGER,
    "bonus_req_type" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "ended_on" DATE,
    "started_on" DATE,
    "conclusion" VARCHAR,
    "previous_id" BIGINT,

    CONSTRAINT "contracts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "fixture_legs" (
    "id" BIGSERIAL NOT NULL,
    "fixture_id" BIGINT,
    "home_score" VARCHAR,
    "away_score" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "fixture_legs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "fixtures" (
    "id" BIGSERIAL NOT NULL,
    "stage_id" BIGINT,
    "home_team" VARCHAR,
    "away_team" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "fixtures_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "goals" (
    "id" BIGSERIAL NOT NULL,
    "match_id" BIGINT,
    "minute" INTEGER,
    "player_name" VARCHAR,
    "player_id" BIGINT,
    "assist_id" BIGINT,
    "home" BOOLEAN NOT NULL DEFAULT false,
    "own_goal" BOOLEAN NOT NULL DEFAULT false,
    "penalty" BOOLEAN NOT NULL DEFAULT false,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "assisted_by" VARCHAR,

    CONSTRAINT "goals_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "injuries" (
    "id" BIGSERIAL NOT NULL,
    "player_id" BIGINT,
    "started_on" DATE,
    "ended_on" DATE,
    "description" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "injuries_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "loans" (
    "id" BIGSERIAL NOT NULL,
    "player_id" BIGINT,
    "started_on" DATE,
    "ended_on" DATE,
    "destination" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "origin" VARCHAR,
    "signed_on" DATE,
    "wage_percentage" INTEGER,
    "transfer_fee" INTEGER,
    "addon_clause" INTEGER,

    CONSTRAINT "loans_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "matches" (
    "id" BIGSERIAL NOT NULL,
    "team_id" BIGINT,
    "home" VARCHAR,
    "away" VARCHAR,
    "competition" VARCHAR,
    "played_on" DATE,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "extra_time" BOOLEAN NOT NULL DEFAULT false,
    "home_score" INTEGER DEFAULT 0,
    "away_score" INTEGER DEFAULT 0,
    "stage" VARCHAR,
    "friendly" BOOLEAN NOT NULL DEFAULT false,
    "season" INTEGER,

    CONSTRAINT "matches_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "options" (
    "id" BIGSERIAL NOT NULL,
    "user_id" BIGINT,
    "category" VARCHAR,
    "value" VARCHAR,

    CONSTRAINT "options_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "penalty_shootouts" (
    "id" BIGSERIAL NOT NULL,
    "match_id" BIGINT,
    "home_score" INTEGER,
    "away_score" INTEGER,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "penalty_shootouts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "player_histories" (
    "id" BIGSERIAL NOT NULL,
    "player_id" BIGINT,
    "recorded_on" DATE,
    "ovr" INTEGER,
    "value" INTEGER,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "kit_no" INTEGER,

    CONSTRAINT "player_histories_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "players" (
    "id" BIGSERIAL NOT NULL,
    "team_id" BIGINT,
    "name" VARCHAR,
    "nationality" VARCHAR,
    "pos" VARCHAR,
    "sec_pos" TEXT[] DEFAULT ARRAY[]::TEXT[],
    "ovr" INTEGER,
    "value" INTEGER,
    "birth_year" INTEGER,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "status" VARCHAR,
    "youth" BOOLEAN NOT NULL DEFAULT false,
    "kit_no" INTEGER,
    "coverage" JSONB NOT NULL DEFAULT '{}',

    CONSTRAINT "players_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "schema_migrations" (
    "version" VARCHAR NOT NULL,

    CONSTRAINT "schema_migrations_pkey" PRIMARY KEY ("version")
);

-- CreateTable
CREATE TABLE "squad_players" (
    "id" BIGSERIAL NOT NULL,
    "squad_id" BIGINT,
    "player_id" BIGINT,
    "pos" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "squad_players_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "squads" (
    "id" BIGSERIAL NOT NULL,
    "team_id" BIGINT,
    "name" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "squads_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "stages" (
    "id" BIGSERIAL NOT NULL,
    "competition_id" BIGINT,
    "name" VARCHAR,
    "num_teams" INTEGER,
    "num_fixtures" INTEGER,
    "table" BOOLEAN NOT NULL DEFAULT false,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "stages_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "substitutions" (
    "id" BIGSERIAL NOT NULL,
    "match_id" BIGINT,
    "minute" INTEGER,
    "player_id" BIGINT,
    "replacement_id" BIGINT,
    "injury" BOOLEAN NOT NULL DEFAULT false,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "player_name" VARCHAR,
    "replaced_by" VARCHAR,

    CONSTRAINT "substitutions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "table_rows" (
    "id" BIGSERIAL NOT NULL,
    "stage_id" BIGINT,
    "name" VARCHAR,
    "wins" INTEGER DEFAULT 0,
    "draws" INTEGER DEFAULT 0,
    "losses" INTEGER DEFAULT 0,
    "goals_for" INTEGER DEFAULT 0,
    "goals_against" INTEGER DEFAULT 0,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "table_rows_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "teams" (
    "id" BIGSERIAL NOT NULL,
    "user_id" BIGINT,
    "name" VARCHAR,
    "started_on" DATE,
    "currently_on" DATE,
    "active" BOOLEAN NOT NULL DEFAULT true,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "currency" VARCHAR DEFAULT '$',
    "previous_id" BIGINT,
    "game" VARCHAR,
    "manager_name" VARCHAR,

    CONSTRAINT "teams_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "transfers" (
    "id" BIGSERIAL NOT NULL,
    "player_id" BIGINT,
    "signed_on" DATE,
    "moved_on" DATE,
    "origin" VARCHAR,
    "destination" VARCHAR,
    "fee" INTEGER,
    "traded_player" VARCHAR,
    "addon_clause" INTEGER,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "transfers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "users" (
    "id" BIGSERIAL NOT NULL,
    "full_name" VARCHAR,
    "email" VARCHAR NOT NULL DEFAULT '',
    "encrypted_password" VARCHAR NOT NULL DEFAULT '',
    "reset_password_token" VARCHAR,
    "reset_password_sent_at" TIMESTAMP(6),
    "remember_created_at" TIMESTAMP(6),
    "sign_in_count" INTEGER NOT NULL DEFAULT 0,
    "current_sign_in_at" TIMESTAMP(6),
    "last_sign_in_at" TIMESTAMP(6),
    "current_sign_in_ip" INET,
    "last_sign_in_ip" INET,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "admin" BOOLEAN NOT NULL DEFAULT false,
    "username" VARCHAR,
    "dark_mode" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "index_access_tokens_on_token" ON "access_tokens"("token");

-- CreateIndex
CREATE INDEX "index_access_tokens_on_user_id" ON "access_tokens"("user_id");

-- CreateIndex
CREATE INDEX "index_active_storage_attachments_on_blob_id" ON "active_storage_attachments"("blob_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_active_storage_attachments_uniqueness" ON "active_storage_attachments"("record_type", "record_id", "name", "blob_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_active_storage_blobs_on_key" ON "active_storage_blobs"("key");

-- CreateIndex
CREATE UNIQUE INDEX "index_active_storage_variant_records_uniqueness" ON "active_storage_variant_records"("blob_id", "variation_digest");

-- CreateIndex
CREATE INDEX "index_bookings_on_match_id" ON "bookings"("match_id");

-- CreateIndex
CREATE INDEX "index_bookings_on_player_id" ON "bookings"("player_id");

-- CreateIndex
CREATE INDEX "index_caps_on_match_id" ON "caps"("match_id");

-- CreateIndex
CREATE INDEX "index_caps_on_player_id" ON "caps"("player_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_caps_on_player_id_and_match_id" ON "caps"("player_id", "match_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_caps_on_pos_and_match_id_and_start" ON "caps"("pos", "match_id", "start");

-- CreateIndex
CREATE INDEX "index_competitions_on_season" ON "competitions"("season");

-- CreateIndex
CREATE INDEX "index_competitions_on_team_id" ON "competitions"("team_id");

-- CreateIndex
CREATE INDEX "index_contracts_on_player_id" ON "contracts"("player_id");

-- CreateIndex
CREATE INDEX "index_contracts_on_previous_id" ON "contracts"("previous_id");

-- CreateIndex
CREATE INDEX "index_fixture_legs_on_fixture_id" ON "fixture_legs"("fixture_id");

-- CreateIndex
CREATE INDEX "index_fixtures_on_stage_id" ON "fixtures"("stage_id");

-- CreateIndex
CREATE INDEX "index_goals_on_assist_id" ON "goals"("assist_id");

-- CreateIndex
CREATE INDEX "index_goals_on_match_id" ON "goals"("match_id");

-- CreateIndex
CREATE INDEX "index_goals_on_player_id" ON "goals"("player_id");

-- CreateIndex
CREATE INDEX "index_injuries_on_player_id" ON "injuries"("player_id");

-- CreateIndex
CREATE INDEX "index_loans_on_player_id" ON "loans"("player_id");

-- CreateIndex
CREATE INDEX "index_matches_on_team_id" ON "matches"("team_id");

-- CreateIndex
CREATE INDEX "index_options_on_user_id" ON "options"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_options_on_user_id_and_category_and_value" ON "options"("user_id", "category", "value");

-- CreateIndex
CREATE INDEX "index_penalty_shootouts_on_match_id" ON "penalty_shootouts"("match_id");

-- CreateIndex
CREATE INDEX "index_player_histories_on_player_id" ON "player_histories"("player_id");

-- CreateIndex
CREATE INDEX "index_players_on_coverage" ON "players" USING GIN ("coverage");

-- CreateIndex
CREATE INDEX "index_players_on_team_id" ON "players"("team_id");

-- CreateIndex
CREATE INDEX "index_squad_players_on_player_id" ON "squad_players"("player_id");

-- CreateIndex
CREATE INDEX "index_squad_players_on_squad_id" ON "squad_players"("squad_id");

-- CreateIndex
CREATE INDEX "index_squads_on_team_id" ON "squads"("team_id");

-- CreateIndex
CREATE INDEX "index_stages_on_competition_id" ON "stages"("competition_id");

-- CreateIndex
CREATE INDEX "index_substitutions_on_match_id" ON "substitutions"("match_id");

-- CreateIndex
CREATE INDEX "index_substitutions_on_player_id" ON "substitutions"("player_id");

-- CreateIndex
CREATE INDEX "index_substitutions_on_replacement_id" ON "substitutions"("replacement_id");

-- CreateIndex
CREATE INDEX "index_table_rows_on_stage_id" ON "table_rows"("stage_id");

-- CreateIndex
CREATE INDEX "index_teams_on_previous_id" ON "teams"("previous_id");

-- CreateIndex
CREATE INDEX "index_teams_on_user_id" ON "teams"("user_id");

-- CreateIndex
CREATE INDEX "index_transfers_on_player_id" ON "transfers"("player_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_users_on_email" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users"("reset_password_token");

-- CreateIndex
CREATE UNIQUE INDEX "index_users_on_username" ON "users"("username");

-- AddForeignKey
ALTER TABLE "active_storage_attachments" ADD CONSTRAINT "fk_rails_c3b3935057" FOREIGN KEY ("blob_id") REFERENCES "active_storage_blobs"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "active_storage_variant_records" ADD CONSTRAINT "fk_rails_993965df05" FOREIGN KEY ("blob_id") REFERENCES "active_storage_blobs"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

