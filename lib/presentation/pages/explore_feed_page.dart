import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../core/route/routes.dart';
import '../../core/utils/dimensions.dart';
import '../../core//utils/app_utils.dart';
import '../bloc/explore_feed/explore_feed_bloc.dart';
import '../bloc/search/search_bloc.dart';
import '../widgets/post_image.dart';
import '../widgets/profile_image.dart';

class ExploreFeedPage extends StatefulWidget {
  const ExploreFeedPage({super.key});

  @override
  State<ExploreFeedPage> createState() => _ExploreFeedPageState();
}

class _ExploreFeedPageState extends State<ExploreFeedPage> {
  late TextEditingController _textEditingController;
  final ScrollController _scrollController = ScrollController();
  final SearchController searchController = SearchController();

  bool showUsers = false;
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _scrollController.addListener(_scrollListener);
    searchController.addListener(() {
      final bloc = context.read<SearchBloc>();
      final text = searchController.text;
      if (text.isEmpty) {
        bloc.add(SearchEvent.cleared());
      } else {
        bloc.add(SearchEvent.queryChanged(text));
      }
    });
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.7) {
      final bloc = context.read<ExploreFeedBloc>();
      final posts = bloc.state.posts;
      if (posts != null && !posts.fetchingMore && !posts.isLastPage) {
        bloc.add(ExploreFeedEvent.fetchMore());
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    final bloc = context.read<ExploreFeedBloc>();
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => bloc.add(ExploreFeedEvent.refreshed()),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.black,
              title: Builder(
                builder: (context) {
                  final searchBloc = context.read<SearchBloc>();
                  return Row(
                    children: [
                      Expanded(
                        child: SearchAnchor(
                          searchController: searchController,
                          builder:
                              (
                                final context,
                                final SearchController controller,
                              ) {
                                return SearchBar(
                                  controller: controller,
                                  hintText: 'Search',
                                  onTap: () => controller.openView(),
                                  onChanged: (text) {
                                    controller.openView();
                                    searchBloc.add(
                                      SearchEvent.queryChanged(text),
                                    );
                                  },
                                  leading: const Icon(Icons.search),
                                  trailing: [
                                    BlocBuilder<SearchBloc, SearchState>(
                                      bloc: searchBloc,
                                      builder: (context, state) {
                                        if (state.isLoading) {
                                          return const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              width: 20,
                                              height: 20,
                                              child: CircularProgressIndicator(
                                                strokeWidth: 2,
                                              ),
                                            ),
                                          );
                                        }
                                        return IconButton(
                                          icon: const Icon(Icons.clear),
                                          onPressed: () {
                                            controller.clear();
                                            searchBloc.add(
                                              const SearchEvent.cleared(),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                          suggestionsBuilder:
                              (
                                final context,
                                final SearchController controller,
                              ) {
                                return [
                                  BlocBuilder<SearchBloc, SearchState>(
                                    bloc: searchBloc,
                                    builder: (context, state) {
                                      if (state.isLoading) {
                                        return const Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: 10.0,
                                                ),
                                                child:
                                                    CircularProgressIndicator(),
                                              ),
                                            ],
                                          ),
                                        );
                                      }
                                      if (state.users.isEmpty &&
                                          !state.isLoading) {
                                        return const ListTile(
                                          title: Text('No users found'),
                                        );
                                      }

                                      return ListView.separated(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: state.users.length,
                                        separatorBuilder: (context, index) =>
                                            const Divider(height: 0),
                                        itemBuilder: (context, index) {
                                          final user = state.users[index];
                                          return ListTile(
                                            title: Text(user.username),
                                            leading: ProfileImage(
                                              profileImageUrl:
                                                  user.profileImageUrl,
                                              isSmall: true,
                                            ),
                                            onTap: () {
                                              controller.closeView(
                                                user.username,
                                              );
                                              context.push(
                                                '${Routes.user}/${user.uid}',
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ];
                              },
                        ),
                      ),
                    ],
                  );
                },
              ),
              // title: BlocProvider(
              //   create: (context) => SearchBloc(sl()),
              //   child: BlocConsumer<SearchBloc, SearchState>(
              //     listener: (context, state) => state.message == null
              //         ? null
              //         : AppUtils.showNotification(context, state.message!),
              //     buildWhen: (previous, current) => true,
              //     builder: (context, state) {
              //       print('Rebuilding search bloc');
              //       return Autocomplete<UserEntity>(
              //         optionsMaxHeight: 200,
              //         optionsBuilder:
              //             (final TextEditingValue textEditingValue) {
              //               print('optionsBuilder');
              //               return state.users;
              //             },
              //         fieldViewBuilder:
              //             (
              //               final context,
              //               final textEditingController,
              //               final focusNode,
              //               final onFieldSubmitted,
              //             ) {
              //               return EditText(
              //                 controller: textEditingController,
              //                 focusNode: focusNode,
              //                 showRectangleInputBorder: true,
              //                 filled: true,
              //                 fillColor: AppColors.blueColor,
              //                 borderSide: BorderSide.none,
              //                 onChanged: (text) => context
              //                     .read<SearchBloc>()
              //                     .add(SearchEvent.queryChanged(text)),
              //                 borderRadius: 5,
              //                 prefixIcon: const Icon(Icons.search, size: 20),
              //                 contentPadding: const EdgeInsets.symmetric(
              //                   horizontal: 15,
              //                 ),
              //                 hint: 'Search',
              //                 inputType: TextInputType.text,
              //                 maxLines: 1,
              //                 suffixIcon: state.isLoading
              //                     ? const Padding(
              //                         padding: EdgeInsets.all(12.0),
              //                         child: CircularProgressIndicator(
              //                           strokeWidth: 2,
              //                           color: Colors
              //                               .white70, // Matches your blue AppBar theme
              //                         ),
              //                       )
              //                     : InkWell(
              //                         onTap: () {
              //                           textEditingController.clear();
              //                           context.read<SearchBloc>().add(
              //                             const SearchEvent.queryChanged(''),
              //                           );
              //                         },
              //                         child: const Icon(Icons.clear, size: 16),
              //                       ),
              //               );
              //             },
              //         displayStringForOption: (final option) => option.username,
              //         optionsViewBuilder:
              //             (final context, final onSelected, final options) {
              //               return Align(
              //                 alignment: Alignment.topLeft,
              //                 child: Material(
              //                   shape: const RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.vertical(
              //                       bottom: Radius.circular(4.0),
              //                     ),
              //                   ),
              //                   clipBehavior: Clip.hardEdge,
              //                   child: SizedBox(
              //                     height: 200,
              //                     width: 500,
              //                     child: ListView.separated(
              //                       primary: false,
              //                       shrinkWrap: true,
              //                       physics: const ClampingScrollPhysics(),
              //                       clipBehavior: Clip.hardEdge,
              //                       itemBuilder: (final context, final index) {
              //                         final UserEntity user = options.elementAt(
              //                           index,
              //                         );
              //                         return InkWell(
              //                           child: Container(
              //                             padding: const EdgeInsets.all(12),
              //                             child: Row(
              //                               children: [
              //                                 Expanded(
              //                                   child: Column(
              //                                     mainAxisSize:
              //                                         MainAxisSize.min,
              //                                     crossAxisAlignment:
              //                                         CrossAxisAlignment.start,
              //                                     children: [
              //                                       Text(user.username),
              //                                     ],
              //                                   ),
              //                                 ),
              //                                 IconButton(
              //                                   onPressed: null,
              //                                   icon: const Icon(Icons.person),
              //                                   iconSize: 16,
              //                                   color: AppColors.primaryColor,
              //                                 ),
              //                               ],
              //                             ),
              //                           ),
              //                           onTap: () {
              //                             onSelected(user);
              //                           },
              //                         );
              //                       },
              //                       separatorBuilder:
              //                           (final context, final index) =>
              //                               const Divider(height: 0),
              //                       itemCount: options.length,
              //                     ),
              //                   ),
              //                 ),
              //               );
              //             },
              //         onSelected: (final user) =>
              //             context.push('${Routes.user}/${user.uid}'),
              //       );
              //     },
              //   ),
              // ),
              // title: Autocomplete(optionsBuilder: (textEditingValue) => ,),
              // title: AppDropDown<UserEntity>(
              //   items: [],
              //   onChanged: (user) => null,
              //   fieldDisplayName: 'Search User',
              //   requiredInput: false,
              //   value: null,
              // ),
              // title: TextField(
              //   decoration: const InputDecoration(
              //     fillColor: Color.fromARGB(255, 52, 48, 48),
              //     filled: true,
              //     border: InputBorder.none,
              //     hintText: 'search',
              //     prefixIcon: Icon(Icons.search),
              //   ),
              //   controller: _textEditingController,
              //   onChanged: (value) {
              //     if (value == '') {
              //       setState(() {
              //         showUsers = false;
              //       });
              //     } else {
              //       setState(() {
              //         showUsers = true;
              //       });
              //     }
              //   },
              // ),
            ),
            BlocConsumer<ExploreFeedBloc, ExploreFeedState>(
              listener: (context, state) {
                if (state.message != null) {
                  AppUtils.showNotification(context, state.message!);
                }
              },
              builder: (context, state) => SliverMainAxisGroup(
                slivers: [
                  if (state.isLoading || state.posts == null)
                    SliverFillRemaining(
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                  if (state.posts != null && state.posts!.items.isNotEmpty)
                    SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            MediaQuery.sizeOf(context).width >= webScreenSize
                            ? 4
                            : 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        childCount: state.posts!.items.length,
                        (context, index) {
                          final post = state.posts!.items[index];
                          return InkWell(
                            onTap: () =>
                                context.push('${Routes.posts}/${post.postId}'),
                            // child: Card(
                            //   child: GridTile(
                            //     child: Image.network(
                            //       post.imageUrl,
                            //       fit: BoxFit.cover,
                            //     ),
                            //   ),
                            // ),
                            child: Card(
                              child: GridTile(
                                child: PostImage(imageUrl: post.imageUrl),
                              ),
                            ),
                          );
                        },
                        //     BlocProvider<PostCardBloc>(
                        //   key: ValueKey(state.posts!.items[index]),
                        //   create: (context) => PostCardBloc(
                        //     postID: state.posts!.items[index],
                        //     postFeedSubscriptionUsecase:
                        //         sl<GetPostFeedSubscriptionUsecase>(),
                        //     getPostUsecase: sl<GetPostUsecase>(),
                        //     togglePostUsecase: sl(),
                        //     updatePostUsecase: sl(),
                        //   ),
                        //   child: const PostCard(),
                        // ),
                      ),
                    ),
                  if (state.posts?.fetchingMore ?? false)
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    // return Padding(
    //   padding: screenWidth >= webScreenSize
    //       ? EdgeInsets.symmetric(horizontal: screenWidth * 0.2)
    //       : const EdgeInsets.symmetric(horizontal: 0),
    //   child: Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.black,
    //       title: TextField(
    //         decoration: const InputDecoration(
    //           fillColor: Color.fromARGB(255, 52, 48, 48),
    //           filled: true,
    //           border: InputBorder.none,
    //           hintText: 'search',
    //           prefixIcon: Icon(Icons.search),
    //         ),
    //         controller: textEditingController,
    //         onChanged: (value) {
    //           if (value == '') {
    //             setState(() {
    //               showUsers = false;
    //             });
    //           } else {
    //             setState(() {
    //               showUsers = true;
    //             });
    //           }
    //         },
    //       ),
    //     ),
    //     body: showUsers
    //         ? FutureBuilder(
    //             future: FirebaseFirestore.instance
    //                 .collection('users')
    //                 .where(
    //                   'username',
    //                   isGreaterThanOrEqualTo: textEditingController.text,
    //                 )
    //                 .get(),
    //             builder: (context, snapshot) {
    //               if (!snapshot.hasData) {
    //                 return const Center(child: CircularProgressIndicator());
    //               }
    //               return ListView.builder(
    //                 itemCount: snapshot.data!.docs.length,
    //                 itemBuilder: (context, index) {
    //                   return ListTile(
    //                     onTap: () => context.push(
    //                       '${Routes.user}/${UserModel.fromJson(snapshot.data!.docs[index].data()).entity.uid}',
    //                     ),
    //                     leading: CircleAvatar(
    //                       backgroundImage: NetworkImage(
    //                         snapshot.data!.docs[index]
    //                             .data()['profileImageUrl'],
    //                       ),
    //                     ),
    //                     title: Text(
    //                       snapshot.data!.docs[index].data()['username'],
    //                     ),
    //                     subtitle: Text(
    //                       snapshot.data!.docs[index].data()['email'],
    //                     ),
    //                   );
    //                 },
    //               );
    //             },
    //           )
    //         : Column(
    //             children: [
    //               Expanded(
    //                 child: StreamBuilder(
    //                   stream: FirebaseFirestore.instance
    //                       .collection('posts')
    //                       .snapshots(),
    //                   builder: (context, snapshot) {
    //                     if (snapshot.connectionState ==
    //                         ConnectionState.waiting) {
    //                       return const Center(
    //                         child: CircularProgressIndicator(),
    //                       );
    //                     }
    //                     return GridView.builder(
    //                       itemCount: snapshot.data!.docs.length,
    //                       gridDelegate:
    //                           SliverGridDelegateWithFixedCrossAxisCount(
    //                             crossAxisCount: screenWidth >= webScreenSize
    //                                 ? 4
    //                                 : 3,
    //                           ),
    //                       itemBuilder: (context, index) {
    //                         return InkWell(
    //                           onTap: () {
    //                             context.push('${Routes.post}/${13}');
    //                             // Navigator.of(context).push(
    //                             //   MaterialPageRoute(
    //                             //     builder: (context) => ViewPostP(
    //                             //       snap: snapshot.data!.docs[index].data(),
    //                             //     ),
    //                             //   ),
    //                             // );
    //                           },
    //                           child: Card(
    //                             child: GridTile(
    //                               child: Image.network(
    //                                 snapshot.data!.docs[index]
    //                                     .data()['imageUrl'],
    //                                 fit: BoxFit.cover,
    //                               ),
    //                             ),
    //                           ),
    //                         );
    //                       },
    //                     );
    //                   },
    //                 ),
    //               ),
    //             ],
    //           ),
    //   ),
    // );
  }
}
