import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/providers/app_start_provider.dart';
import 'package:openalbion_weaponry/utils/dialog_utils.dart';
import 'package:provider/provider.dart';

class BackAndDebugButton extends StatelessWidget {
  const BackAndDebugButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.all(MARGIN_MEDIUM_2),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            'assets/images/svgs/ic_back.svg',
            colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
          ),
          splashRadius: MARGIN_LARGE,
          constraints: BoxConstraints(
            minWidth: MARGIN_LARGE,
          ),
        ),
        Spacer(),
        Consumer<AppStartProvider>(builder: (context, provider, child) {
          return IconButton(
            padding: EdgeInsets.all(MARGIN_MEDIUM_2),
            onPressed: () {
              provider.reportToFirebase("click_debug_report");
                  DialogUtils.showDebugReport(
                      context: context,
                      screen: 'item_detail',
                      titleList: provider.bugCategoryList,
                      onSubmited: (report) {
                        provider.reportBug(report: report);
                      });
            },
            icon: SvgPicture.asset(
              'assets/images/svgs/ic_bug.svg',
              colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
            ),
            splashRadius: MARGIN_LARGE,
            constraints: BoxConstraints(
              minWidth: MARGIN_LARGE,
            ),
          );
        }),
      ],
    );
  }
}
