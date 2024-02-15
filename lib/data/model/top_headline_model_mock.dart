import 'package:news_app/data/model/top_headlines_models.dart';

Articles article1 = Articles(
  source: Source(
    id: "1",
    name: "Example News Source",
  ),
  author: "John Doe",
  title: "Example Article Title 1",
  description: "This is an example description for article 1.",
  url:
      "https://www.theverge.com/24056980/shopify-generative-ai-image-editing-search",
  urlToImage:
      "https://cdn.vox-cdn.com/thumbor/iE3UqZHrFdk0Fr3cyMCRFurz7hc=/0x0:3840x2160/1200x628/filters:focal(1920x1080:1921x1081)/cdn.vox-cdn.com/uploads/chorus_asset/file/25259010/videoframe_1049267.png",
  publishedAt: "2024-02-09T12:00:00Z",
  content: "This is the content of article 1.",
);

Articles article2 = Articles(
  source: Source(
    id: "1",
    name: "Example News Source",
  ),
  author: "John Doe",
  title: "Example Article Title 1",
  description: "This is an example description for article 1.",
  url:
      "https://www.theverge.com/24056980/shopify-generative-ai-image-editing-search",
  urlToImage:
      "https://cdn.vox-cdn.com/thumbor/iE3UqZHrFdk0Fr3cyMCRFurz7hc=/0x0:3840x2160/1200x628/filters:focal(1920x1080:1921x1081)/cdn.vox-cdn.com/uploads/chorus_asset/file/25259010/videoframe_1049267.png",
  publishedAt: "2024-02-09T12:00:00Z",
  content: "This is the content of article 1.",
);

TopHeadlinesModels topHeadlinesModel = TopHeadlinesModels(
  status: "ok",
  totalResults: 2,
  articles: [article1, article2],
);
