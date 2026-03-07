const admin = require('firebase-admin');
const serviceAccount = require("./service-key.json");

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});

const db = admin.firestore();

const chunk = (arr, size) =>
  Array.from({ length: Math.ceil(arr.length / size) }, (v, i) =>
    arr.slice(i * size, i * size + size)
  );

async function generateFeeds() {
  const usersSnapshot = await db.collection('users').get();
  console.log(`Found ${usersSnapshot.size} users. Starting migration...`);

  for (const userDoc of usersSnapshot.docs) {
    const { following } = userDoc.data();
    if (!following || following.length === 0) continue;

    const followingChunks = chunk(following, 30);
    const batch = db.batch();
    let operationCount = 0;

    for (const c of followingChunks) {
      const postsSnapshot = await db.collection('posts')
        .where('uid', 'in', c)
        .get();

      postsSnapshot.forEach(postDoc => {
        const feedRef = db.collection('users').doc(userDoc.id).collection('feed').doc(postDoc.id);
        batch.set(feedRef, { datePublished: postDoc.data().datePublished });
        operationCount++;
      });
    }

    if (operationCount > 0) {
      await batch.commit();
      console.log(`✅ Synced ${operationCount} posts to ${userDoc.id}'s feed.`);
    }
  }
}

generateFeeds().then(() => process.exit());