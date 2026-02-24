// functions/counters.js

const functions = require("firebase-functions");
const admin = require("firebase-admin");
const db = admin.firestore(); // Get Firestore instance here

// Firestore trigger function to maintain the post count
exports.updatePostCount = functions.firestore
    .document("posts/{postId}")
    .onWrite(async (change, context) => {
      const postBefore = change.before.data();
      const postAfter = change.after.data();

      const authorId = postAfter ? postAfter.authorId : postBefore ? postBefore.authorId : null;
      if (!authorId) return null;

      let countChange = 0;
      if (change.after.exists && !change.before.exists) {
        countChange = 1; // Created
      } else if (!change.after.exists && change.before.exists) {
        countChange = -1; // Deleted
      } else {
        return null; // Updated or no change
      }

      if (countChange === 0) return null;

      const userRef = db.collection("users").doc(authorId);

      // Atomically increment/decrement the counter
      return userRef.update({
        postCount: admin.firestore.FieldValue.increment(countChange),
      });
    });
