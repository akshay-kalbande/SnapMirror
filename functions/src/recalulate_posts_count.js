// functions/recalculate.js

const functions = require("firebase-functions");
const admin = require("firebase-admin");
const db = admin.firestore(); // Get Firestore instance here

// HTTP function to recalculate all user post counts
exports.recalculateAllPostCounts = functions.https.onRequest(async (req, res) => {
  try {
    const usersSnapshot = await db.collection("users").get();
    const batch = db.batch();

    for (const userDoc of usersSnapshot.docs) {
      const userId = userDoc.id;
      const postsQuery = db.collection("posts").where("authorId", "==", userId);

      const countSnapshot = await postsQuery.count().get();
      const postCount = countSnapshot.data().count;

      const userRef = db.collection("users").doc(userId);
      batch.update(userRef, {
        postCount: postCount,
        lastCalculated: admin.firestore.FieldValue.serverTimestamp(),
      });
    }

    await batch.commit();

    res.status(200).send({
      message: `Successfully recalculated post counts for ${usersSnapshot.size} users.`,
    });
  } catch (error) {
    functions.logger.error("Error during recalculation:", error);
    res.status(500).send({message: "An error occurred."});
  }
});
