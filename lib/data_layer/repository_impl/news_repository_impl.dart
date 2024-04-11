

import 'package:injectable/injectable.dart';
import 'package:newsapp/data_layer/Model/newsResponse/Articles.dart';

import '../../repository_contract/repository.dart';
import '../Model/sourceResponse/Source.dart';
import '../datasource_contract/newsdatasource.dart';

@Injectable(as:NewsRepository )
class NewsRepositoryimpl extends NewsRepository{
  @factoryMethod
  NewsDataSource ApiDataSource;
  NewsRepositoryimpl(this.ApiDataSource);

  @override
  Future<List<Source>> getSources(String categoryId) {
  return ApiDataSource.getSources(categoryId);
  }

  @override
  Future<List<Article>> getNews(String SourceId) {
   return ApiDataSource.getNews(SourceId);
  }
  
}