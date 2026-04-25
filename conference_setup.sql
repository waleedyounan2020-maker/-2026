-- الصق في Supabase SQL Editor وأضغط Run

CREATE TABLE IF NOT EXISTS conference_sheets (
  sheet_key   TEXT PRIMARY KEY,
  data        JSONB DEFAULT '[]',
  updated_at  TIMESTAMPTZ DEFAULT now()
);

ALTER TABLE conference_sheets ENABLE ROW LEVEL SECURITY;
CREATE POLICY "allow_read_conf"   ON conference_sheets FOR SELECT USING (true);
CREATE POLICY "allow_insert_conf" ON conference_sheets FOR INSERT WITH CHECK (true);
CREATE POLICY "allow_update_conf" ON conference_sheets FOR UPDATE USING (true);
