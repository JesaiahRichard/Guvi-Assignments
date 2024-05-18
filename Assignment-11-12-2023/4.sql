-- 04 Find the number of problems solved by the user in codekata

--Query

db.codekata.aggregate([
  {$lookup:{
			from:"users",
			localField:"userId",
			foreignField:"userId",
			as:"Result"
}},
  {$project:{
			_id:0,
			problemSolved:1,
			"Result.userName":1
}}
])


--Answer

{
  problemSolved: 13,
  Result: [
    {
      userName: 'richard'
    }
  ]
}
{
  problemSolved: 11,
  Result: [
    {
      userName: 'raja'
    }
  ]
}
{
  problemSolved: 16,
  Result: [
    {
      userName: 'jesh'
    }
  ]
}
{
  problemSolved: 16,
  Result: [
    {
      userName: 'abi'
    }
  ]
}
{
  problemSolved: 33,
  Result: [
    {
      userName: 'surya'
    }
  ]
}
{
  problemSolved: 36,
  Result: [
    {
      userName: 'siva'
    }
  ]
}
{
  problemSolved: 61,
  Result: [
    {
      userName: 'vinoth'
    }
  ]
}
{
  problemSolved: 63,
  Result: [
    {
      userName: 'harish'
    }
  ]
}
{
  problemSolved: 66,
  Result: [
    {
      userName: 'barath'
    }
  ]
}
{
  problemSolved: 66,
  Result: [
    {
      userName: 'riyas'
    }
  ]
}
{
  problemSolved: 63,
  Result: [
    {
      userName: 'kumar'
    }
  ]
}
{
  problemSolved: 16,
  Result: [
    {
      userName: 'sanji'
    }
  ]
}
{
  problemSolved: 61,
  Result: [
    {
      userName: 'zoro'
    }
  ]
}
{
  problemSolved: 36,
  Result: [
    {
      userName: 'senthil'
    }
  ]
}
{
  problemSolved: 33,
  Result: [
    {
      userName: 'santhosh'
    }
  ]
}
{
  problemSolved: 13,
  Result: [
    {
      userName: 'sanjai'
    }
  ]
}
{
  problemSolved: 31,
  Result: [
    {
      userName: 'suseel'
    }
  ]
}
{
  problemSolved: 16,
  Result: [
    {
      userName: 'loki'
    }
  ]
}
{
  problemSolved: 13,
  Result: [
    {
      userName: 't'
    }
  ]
}
{
  problemSolved: 11,
  Result: [
    {
      userName: 'karthick'
    }
  ]
}
