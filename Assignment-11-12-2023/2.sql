-- 02 Find all the company drives which appeared between 15 oct-2020 and 31-oct-2020

--Query

db.companyDrives.find({driveDate:{$gte:new Date("2020-10-15"),$lte:new Date("2020-10-31")}})

--Answer

{
  _id: ObjectId("64b8e12d31d30f5c67249230"),
  userId: 2,
  driveDate: 2020-10-19T18:30:00.000Z,
  company: 'Guvi'
}
{
  _id: ObjectId("64b8e12d31d30f5c67249231"),
  userId: 3,
  driveDate: 2020-10-24T18:30:00.000Z,
  company: 'Zoho'
}
{
  _id: ObjectId("64b8e12d31d30f5c67249232"),
  userId: 2,
  driveDate: 2020-10-26T18:30:00.000Z,
  company: 'TCS'
}