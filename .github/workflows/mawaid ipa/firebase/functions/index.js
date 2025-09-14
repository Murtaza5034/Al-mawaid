const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("users/" + user.uid);
});
const OneSignal = require("@onesignal/node-onesignal");

const kUserKey = "a86e704c-d22a-490e-bcec-6a6e1f4a1d8a";
const kAPIKey =
  "os_v2_app_urejpzrz6zc5re2n7ge4zjuuczop2to2favutfnqhy33tebfcy3uluje4mkqwswqcba7wtrdl7vvd4exkukeqhvs4xdhcejm647obgy";

const configuration = OneSignal.createConfiguration({
  userKey: kUserKey,
  appKey: kAPIKey,
});
const client = new OneSignal.DefaultApi(configuration);
const user = new OneSignal.User();
const axios = require("axios");

exports.addUser = functions.https.onCall(async (data, context) => {
  if (context.auth.uid != data.user_id) {
    return "Unauthenticated calls are not allowed.";
  }
  try {
    user.identity = {
      external_id: data.user_id,
    };
    user.properties = {
      tags: data.tags,
    };
    user.subscriptions = data.subscriptions;
    const createdUser = await client.createUser(
      "a44897e6-39f6-45d8-934d-f989cca69416",
      user,
    );
    if (createdUser.identity["onesignal_id"] == null) {
      throw new functions.https.HttpsError(
        "aborted",
        "Could not create OneSignal user",
      );
    }
    return createdUser;
  } catch (err) {
    console.error(
      `Unable to create user ${context.auth.uid}.
            Error ${err}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not create OneSignal user",
    );
  }
});

exports.deleteUser = functions.https.onCall(async (data, context) => {
  if (context.auth.uid != data.user_id) {
    return "Unauthenticated calls are not allowed.";
  }

  const url = `https://api.onesignal.com/apps/a44897e6-39f6-45d8-934d-f989cca69416/users/by/external_id/${data.user_id}`;

  try {
    await axios.delete(url, {
      headers: {
        Authorization: `Basic ${kAPIKey}`,
      },
    });
    return "User deleted";
  } catch (err) {
    console.error(
      `Unable to delete user ${context.auth.uid}. Error: ${err.message}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not delete OneSignal user",
    );
  }
});
