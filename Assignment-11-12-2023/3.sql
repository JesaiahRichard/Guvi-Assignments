-- 03 Find all the company drives and students who are appeared for the placement.

--Query

db.companyDrives.aggregate([
  {$lookup:{
			from:"users",
			localField:"userId",
			foreignField:"userId",
			as:"PlacementInfo"
}},
  {$project:{
			userId:1,
			company:1,
			driveDate:1,
			"PlacementInfo.userName":1
}}
])


--Answer

{
  _id: ObjectId("64b8e12d31d30f5c6724922e"),
  userId: 1,
  driveDate: 2020-10-03T18:30:00.000Z,
  company: 'Google',
  PlacementInfo: [
    {
      userName: 'parthi'
    }
  ]
}
{
  _id: ObjectId("64b8e12d31d30f5c6724922f"),
  userId: 1,
  driveDate: 2020-10-10T18:30:00.000Z,
  company: 'Amazon',
  PlacementInfo: [
    {
      userName: 'parthi'
    }
  ]
}
{
  _id: ObjectId("64b8e12d31d30f5c67249230"),
  userId: 2,
  driveDate: 2020-10-19T18:30:00.000Z,
  company: 'Guvi',
  PlacementInfo: [
    {
      userName: 'raja'
    }
  ]
}
{
  _id: ObjectId("64b8e12d31d30f5c67249231"),
  userId: 3,
  driveDate: 2020-10-24T18:30:00.000Z,
  company: 'Zoho',
  PlacementInfo: [
    {
      userName: 'jesh'
    }
  ]
}
{
  _id: ObjectId("64b8e12d31d30f5c67249231"),
  userId: 3,
  driveDate: 2020-10-24T18:30:00.000Z,
  company: 'Zoho',
  PlacementInfo: [
    {
      userName: 'jesh'
    }
  ]
}