import 'package:e_commerce_app_flutter/models/Model.dart';

class Review extends Model {
  static const String REVIEWER_UID_KEY = "reviewer_uid";
  static const String RATING_KEY = "rating";
  static const String REVIEW_KEY = "review";

  String reviewerUid;
  int rating;
  String review;
  Review(
    String id, {
    this.reviewerUid,
    this.rating,
    this.review,
  }) : super(id);

  factory Review.fromMap(Map<String, dynamic> map, {String id}) {
    return Review(
      id,
      reviewerUid: map[REVIEWER_UID_KEY],
      rating: map[RATING_KEY],
      review: map[REVIEW_KEY],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      REVIEWER_UID_KEY: reviewerUid,
      RATING_KEY: rating,
      REVIEW_KEY: review,
    };
    return map;
  }

  @override
  Map<String, dynamic> toUpdateMap() {
    final map = <String, dynamic>{};
    if (reviewerUid != null) map[REVIEWER_UID_KEY] = reviewerUid;
    if (rating != null) map[RATING_KEY] = rating;
    if (review != null) map[REVIEW_KEY] = review;
    return map;
  }
}