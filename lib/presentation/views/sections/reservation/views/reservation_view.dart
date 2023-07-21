import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pokerspot_partner_app/presentation/providers/reservation_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/common/no_store.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/components/count_tab.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/components/list_header.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/components/new_item.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/components/tab_header.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/info_dialog/information_dialog_utils.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/picker_dialog/picker_dialog_utils.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/selection_dialog/selection_dialog_utils.dart';
import 'package:provider/provider.dart';

import '../../../../../data/models/partner/partner_store.dart';
import '../../../../../locator.dart';
import '../../../../providers/home_provider.dart';
import '../components/no_data.dart';

class ReservationView extends StatefulWidget {
  const ReservationView({super.key});

  @override
  State<ReservationView> createState() => _ReservationViewState();
}

class _ReservationViewState extends State<ReservationView> {
  final ScrollController _scrollController = ScrollController();
  late final ReservationProvider _reservationProvider;
  int _tap = 0;
  int _page = 1;
  bool _isPaused = false;
  final _comments = [
    '예약이 꽉 찼습니다.',
    '곧 마감 시간입니다.',
    '기타 사정으로 일찍 마감했습니다.',
    '현재 영업시간이 아닙니다.',
  ];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _reservationProvider.getPauseStatus();
    });
    _scrollController.addListener(_onScroll);
  }

  int _differenceTime(DateTime createdAt) {
    DateTime now = DateTime.now();
    Duration difference = now.difference(createdAt);
    if (difference.inHours == 0) {
      return difference.inMinutes;
    } else {
      return difference.inHours;
    }
  }

  void _onScroll() {
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0) {
      _page++;
      _getReservations(false);
    }
  }

  void _getReservations(bool reset) {
    _reservationProvider.getReservations(
        status: _tap == 0 ? 'PENDING' : 'ACCEPT', page: reset ? 1 : _page);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (_, provider, __) {
        if (provider.selectedStore == null) {
          return const Center(child: NoStore());
        }
        final title = provider.selectedStore!.name;
        return Scaffold(
            appBar: reservationTabAppBar(
                context: context,
                title: title,
                cancelReservation: () async {
                  final isPaused =
                      await _reservationProvider.changePauseStatus();
                  setState(() {
                    _isPaused = isPaused;
                  });
                },
                isPaused: _isPaused),
            body: _buildBody(
              context,
              provider.selectedStore!,
            ));
      },
    );
  }

  Widget _buildBody(BuildContext context, PartnerStoreModel store) {
    return ChangeNotifierProvider<ReservationProvider>(
      create: (_) {
        _reservationProvider = locator();
        return _reservationProvider;
      },
      child: Consumer<ReservationProvider>(builder: (_, __, ___) {
        if (_reservationProvider.reservations == null) {
          return const Center(child: CircularProgressIndicator());
        }
        final reservations = _reservationProvider.reservations!;
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ReservationCountTab(
              newData: reservations.statusCount.pending,
              completeData: reservations.statusCount.accept,
              focusedOn: _tap == 0 ? FocusedOn.newData : FocusedOn.completeData,
              onTap: (tap) {
                _getReservations(true);
                setState(() {
                  _tap = tap;
                });
              },
            ),
            ReservationListHeader(
              date: DateFormat('MM.dd(E)').format(DateTime.now()),
              startAt: '',
              onOneClickCancelButtonPressed: () {
                showSelectionDialog(
                  context: context,
                  title: '예약 일괄 취소',
                  content:
                      '${reservations.statusCount.pending}명의 예약을 취소하시겠습니까?',
                  confirmText: '예약 취소',
                  onConfirm: () async {
                    final success =
                        await _reservationProvider.rejectAll('일괄취소');
                    if (!success && mounted) {
                      showInformationDialog(
                          context: context,
                          title: '오류 발생',
                          content: '일괄취소를 실패하였습니다.');
                    } else {
                      Navigator.pop(context);
                    }
                  },
                  cancelText: '취소',
                );
              },
            ),
            if (_reservationProvider.reservations?.reservations.isEmpty == true)
              const Expanded(child: ReservationNoData())
            else
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  itemBuilder: (_, index) {
                    final reservation = reservations.reservations[index];
                    return ReservationItem(
                      date:
                          DateFormat('MM.dd(E)').format(reservation.createdAt),
                      status: reservation.status == 'ACCEPT'
                          ? Status.complete
                          : Status.waiting,
                      reservedAt: _differenceTime(reservation.createdAt),
                      time: reservation.time,
                      count: reservation.personNum.toString(),
                      isCoupon: reservation.isUsedCoupon,
                      shopName: store.name,
                      userNickname: reservation.reservationUserName,

                      /// TODO 유저 타입 API 모델에 추가되어야됨
                      userType: UserType.common,
                      onDenyButtonPressed: () {
                        showPickerDialog(
                            context: context,
                            title: '예약 거절',
                            selections: _comments,
                            onSelectedItemChanged: (index) async {
                              final error = await _reservationProvider.reject(
                                  id: reservation.uid,
                                  comment: _comments[index]);
                              if (error != null && mounted) {
                                showInformationDialog(
                                    context: context,
                                    title: '오류 발생',
                                    content: error);
                              } else {
                                Navigator.pop(context);
                              }
                            });
                      },
                      onConfirmButtonPressed: () {
                        showSelectionDialog(
                          context: context,
                          title: '예약 접수',
                          content: '예약을 접수하시겠습니까?',
                          confirmText: '확인',
                          onConfirm: () async {
                            final error = await _reservationProvider
                                .accept(reservation.uid);
                            if (error != null && mounted) {
                              showInformationDialog(
                                  context: context,
                                  title: '오류 발생',
                                  content: error);
                            } else {
                              Navigator.pop(context);
                            }
                          },
                          cancelText: '취소',
                        );
                      },
                    );
                  },
                  itemCount: reservations.reservations.length,
                ),
              ),
          ],
        );
      }),
    );
  }
}
