import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/portfolio_item.dart';
import '../widgets/portfolio_card.dart';
import '../utils/constants.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  TextEditingController _searchController = TextEditingController();
  List<PortfolioItem> _allItems = [];
  List<PortfolioItem> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _initializeData();
    _searchController.addListener(_filterItems);
  }

  void _initializeData() {
    _allItems = [
      PortfolioItem(
        id: '1',
        title: 'Kemampuan Merangkum Tulisan',
        subtitle: 'BAHASA SUNDA\nOleh Al-Baiqi Samaan',
        imagePath: 'assets/images/portfolio1.png',
        grade: 'A',
      ),
      PortfolioItem(
        id: '2',
        title: 'Kemampuan Merangkum Tulisan',
        subtitle: 'BAHASA SUNDA\nOleh Al-Baiqi Samaan',
        imagePath: 'assets/images/portfolio2.png',
        grade: 'A',
      ),
      PortfolioItem(
        id: '3',
        title: 'Kemampuan Merangkum Tulisan',
        subtitle: 'BAHASA SUNDA\nOleh Al-Baiqi Samaan',
        imagePath: 'assets/images/portfolio3.png',
        grade: 'A',
      ),
      PortfolioItem(
        id: '4',
        title: 'Kemampuan Merangkum Tulisan',
        subtitle: 'BAHASA SUNDA\nOleh Al-Baiqi Samaan',
        imagePath: 'assets/images/portfolio4.png',
        grade: 'A',
      ),
      PortfolioItem(
        id: '5',
        title: 'Kemampuan Merangkum Tulisan',
        subtitle: 'BAHASA SUNDA\nOleh Al-Baiqi Samaan',
        imagePath: 'assets/images/portfolio5.png',
        grade: 'A',
      ),
    ];
    _filteredItems = List.from(_allItems);
  }

  void _filterItems() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredItems = _allItems
          .where((item) => item.title.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            _buildTabBar(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildProjectTab(),
                  _buildEmptyTab('Saved'),
                  _buildEmptyTab('Shared'),
                  _buildEmptyTab('Achievement'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(20.w),
      color: AppColors.white,
      child: Row(
        children: [
          Text(
            'Portfolio',
            style: AppTextStyles.heading.copyWith(fontSize: 24.sp),
          ),
          const Spacer(),
          Icon(
            Icons.shopping_bag_outlined,
            color: AppColors.primary,
            size: 24.sp,
          ),
          SizedBox(width: 16.w),
          Icon(
            Icons.notifications_outlined,
            color: AppColors.primary,
            size: 24.sp,
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      color: AppColors.white,
      child: TabBar(
        controller: _tabController,
        indicatorColor: AppColors.primary,
        indicatorWeight: 3.h,
        labelColor: AppColors.primary,
        unselectedLabelColor: AppColors.textSecondary,
        labelStyle: AppTextStyles.tabText.copyWith(fontSize: 14.sp),
        unselectedLabelStyle: AppTextStyles.tabText.copyWith(fontSize: 14.sp),
        tabs: const [
          Tab(text: 'Project'),
          Tab(text: 'Saved'),
          Tab(text: 'Shared'),
          Tab(text: 'Achievement'),
        ],
      ),
    );
  }

  Widget _buildProjectTab() {
    return Container(
      padding: EdgeInsets.all(20.w),
      child: Column(
        children: [
          _buildSearchBar(),
          SizedBox(height: 20.h),
          _buildFilterButton(),
          SizedBox(height: 20.h),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredItems.length,
              itemBuilder: (context, index) {
                return PortfolioCard(item: _filteredItems[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search a project',
          hintStyle: AppTextStyles.cardSubtitle.copyWith(fontSize: 14.sp),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.textSecondary,
            size: 20.sp,
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Image.asset(
              'assets/images/search1.png',
              width: 5.w,
              height: 5.h,
            ),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),

        ),
        style: AppTextStyles.cardTitle.copyWith(fontSize: 14.sp),
      ),
    );
  }

  Widget _buildFilterButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.tune,
              color: AppColors.white,
              size: 12.sp,
            ),
            SizedBox(width: 8.w),
            Text(
              'Filter',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyTab(String tabName) {
    return Container(
      padding: EdgeInsets.all(20.w),
      child: Center(
        child: Text(
          '$tabName content will be here',
          style: AppTextStyles.cardTitle.copyWith(fontSize: 16.sp),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }
}