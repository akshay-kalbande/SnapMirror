const admin=require("firebase-admin");

admin.initializeApp();

const recalculatePosts = require("src/recalculate_post_count");
const updatePostCount = require("src/update_post_count");

exports.recalculateAllPostCounts= recalculatePosts.recalculateAllPostCounts;
exports.updatePostCount = updatePostCount.updatePostCount;


