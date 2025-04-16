
-- Create a dedicated schema for geo data
CREATE SCHEMA IF NOT EXISTS geo AUTHORIZATION postgres;

-- Core POI table
CREATE TABLE IF NOT EXISTS geo.poi (
    poi_id         SERIAL PRIMARY KEY,
    name           TEXT        NOT NULL,
    category       TEXT        NOT NULL,
    street         TEXT,
    postal_code    VARCHAR(10),
    city           TEXT,
    geom           GEOMETRY(Point, 4326), -- WGS‑84 (future PostGIS use)
    created_at     TIMESTAMP   DEFAULT CURRENT_TIMESTAMP
);

-- Simple B‑tree index on category for quick filters
CREATE INDEX IF NOT EXISTS idx_poi_category ON geo.poi(category);

-- Inline note: I kept this table minimal; I’ll evolve it once PostGIS is enabled.
