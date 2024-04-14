package helpers

import (
	"context"

	"github.com/harsh082ip/Foodibles_India/tree/main/server/database"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"gopkg.in/mgo.v2/bson"
)

func CheckIfDocumentExists(key, value, collName string, isID bool) (bool, error) {

	coll := database.OpenCollection(database.Client, collName)

	// Check if user ID is provided
	if isID {
		// Convert user ID to ObjectID
		objId, err := primitive.ObjectIDFromHex(value)
		if err != nil {
			return false, err
		}

		// Define the filter to find documents by user ID
		userIDFilter := bson.D{{key, objId}}

		// Count the number of documents that match the filter
		count, err := coll.CountDocuments(context.TODO(), userIDFilter)
		if err != nil {
			return false, err
		}

		// If count is 0, document does not exist
		if count == 0 {
			return false, nil
		}

		// If count is not 0, document exists
		return true, nil
	}

	count, err := coll.CountDocuments(context.TODO(), bson.M{key: value})
	if err != nil {
		return false, err
	}

	// If count is 0, document does not exist
	if count == 0 {
		return false, nil
	}

	// If count is not 0, document exists
	return true, nil
}
