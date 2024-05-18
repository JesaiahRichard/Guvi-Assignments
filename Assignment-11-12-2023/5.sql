-- 05 Find all the mentors with who has the mentee's count more than 15


--Query 

db.users.aggregate([
  {
    $lookup: {
      from: "mentors",
      localField: "mentorId",
      foreignField: "mentorId",
      as: "mentorInfo",
    },
  },
  {
    $group: {
      _id: {
        mentorId: "$mentorInfo.mentorId",
        mentorName: "$mentorInfo.mentorName",
      },
      menteeCount: { $sum: 1 },
    },
  },
  {
    $match: {
      menteeCount: { $gt: 15 },
    },
  },
]);

--Answer

{
  _id: {
    mentorId: [
      1
    ],
    mentorName: [
      'sangeetha'
    ]
  },
  menteeCount: 16
}