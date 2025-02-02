use super::*;

/// TODO - Document
#[derive(Clone, Debug)]
pub struct Player {
    /// TODO - Document
    pub index: i32,
    /// TODO - Document
    pub score: i64,
    /// TODO - Document
    pub vehicles: Vec<model::Vehicle>,
}

impl trans::Trans for Player {
    fn write_to(&self, writer: &mut dyn std::io::Write) -> std::io::Result<()> {
        self.index.write_to(writer)?;
        self.score.write_to(writer)?;
        self.vehicles.write_to(writer)?;
        Ok(())
    }
    fn read_from(reader: &mut dyn std::io::Read) -> std::io::Result<Self> {
        let index: i32 = trans::Trans::read_from(reader)?;
        let score: i64 = trans::Trans::read_from(reader)?;
        let vehicles: Vec<model::Vehicle> = trans::Trans::read_from(reader)?;
        Ok(Self {
            index,
            score,
            vehicles,
        })
    }
}