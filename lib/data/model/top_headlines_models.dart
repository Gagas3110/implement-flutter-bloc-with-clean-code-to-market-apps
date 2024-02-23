import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_headlines_models.freezed.dart';
part 'top_headlines_models.g.dart';

@freezed
class TopHeadlinesModels with _$TopHeadlinesModels {
  const factory TopHeadlinesModels({
    String? status,
    int? totalResults,
    List<Articles>? articles,
  }) = _TopHeadlinesModels;

  factory TopHeadlinesModels.fromJson(Map<String, dynamic> json) =>
      _$TopHeadlinesModelsFromJson(json);
}

@freezed
class Articles with _$Articles {
  const factory Articles({
    Source? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) = _Articles;

  factory Articles.fromJson(Map<String, dynamic> json) =>
      _$ArticlesFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    String? id,
    String? name,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
