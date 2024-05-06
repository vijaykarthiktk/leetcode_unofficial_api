class GQLQueries {
  static const String userActiveBadgeQuery = '''
query getUserProfile(\$username: String!) {
    matchedUser(username: \$username) {
        activeBadge {
            id
            displayName
            icon
            creationDate
        }
    }
}
''';

  static const String userBadgeQuery = '''
query getUserProfile(\$username: String!) {
    matchedUser(username: \$username) {
        badges {
            id
            displayName
            icon
            creationDate
        }
        upcomingBadges {
            name
            icon
        }
        activeBadge {
            id
            displayName
            icon
            creationDate
        }
    }
}
''';

  static const String userProfileQuery = '''
query getUserProfile(\$username: String!) {
    matchedUser(username: \$username) {
        username
        githubUrl
        twitterUrl
        linkedinUrl
        contributions {
            points
            questionCount
            testcaseCount
        }
        profile {
            realName
            userAvatar
            birthday
            ranking
            reputation
            websites
            countryName
            company
            school
            skillTags
            aboutMe
            starRating
        }  
   }
}''';

  static const String userSolvedProblemCount = '''
query getUserProfile(\$username: String!) {
    matchedUser(username: \$username) {
        submitStats {
            totalSubmissionNum {
                difficulty
                count
                submissions
            }
            acSubmissionNum {
                difficulty
                count
                submissions
            }
        }
    }
 
}''';

  static const String languageStats = '''
query languageStats(\$username: String!) {
  matchedUser(username: \$username) {
    languageProblemCount {
      languageName
      problemsSolved
    }
  }
}''';

  static const String submissionQuery = '''
query getRecentSubmissions(\$username: String!, \$limit: Int) {
    recentSubmissionList(username: \$username, limit: \$limit) {
        title
        titleSlug
        timestamp
        statusDisplay
        lang
    }
}''';

  static const String dailyProblemQuery = '''
query getDailyProblem {
    activeDailyCodingChallengeQuestion {
        question {
            questionId
            questionFrontendId
            title
            titleSlug
            content
            difficulty
            likes
            dislikes
            similarQuestions    
            topicTags {
                name
                slug
            }
            stats 
            hints
        }
    }
}''';

  static const String selectProblemQuery = '''
query selectProblem(\$titleSlug: String!) {
    question(titleSlug: \$titleSlug) {
        questionId
        questionFrontendId
        title
        titleSlug
        content
        difficulty
        likes
        dislikes
        similarQuestions
        topicTags {
            name
            slug
        }
        stats
        hints    
    }
}''';

  static const String totalProblemCount = '''
query getUserProfile {
    allQuestionsCount {
        difficulty
        count
    }
}
  ''';

  static const String problemListQuery = '''
query getProblems(\$categorySlug: String, \$limit: Int, \$skip: Int, \$filters: QuestionListFilterInput) {
    problemsetQuestionList: questionList(
        categorySlug: \$categorySlug
        limit:\$limit
        skip: \$skip
        filters: \$filters
    ) {
        total: totalNum
        questions: data {
            acRate
            difficulty
            freqBar
            questionFrontendId
            isFavor
            isPaidOnly
            status
            title
            titleSlug
            topicTags {
                name
                id
                slug
            }
            hasSolution
            hasVideoSolution
        }
    }
}''';

  static const String contestQuery = '''
query getUserContestRanking (\$username: String!) {
    userContestRanking(username: \$username) {
        attendedContestsCount
        rating
        globalRanking
        totalParticipants
        topPercentage
        badge {
            name
        }
    }
    userContestRankingHistory(username: \$username) {
        attended
        rating
        ranking
        trendDirection
        problemsSolved
        totalProblems
        finishTimeInSeconds
        contest {
            title
            startTime
        }
    }
}''';
}