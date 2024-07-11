import 'package:flutter/material.dart';
import 'package:instagram/components/profile_widgets/button_notification_other_profile.dart';

class NotificationOtherProfile extends StatefulWidget {
  const NotificationOtherProfile({super.key});

  @override
  State<NotificationOtherProfile> createState() =>
      _NotificationOtherProfileState();
}

class _NotificationOtherProfileState extends State<NotificationOtherProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      width: MediaQuery.of(context).size.width,
      height: 290,
      child: Column(
        children: [
          Text(
            'Notificações',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Instagram',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 0.1,
            height: 0.1,
          ),
          const ButtonNotificationOtherProfile(
            text: 'Publicações',
          ),
          const Divider(
            thickness: 0.1,
            height: 0.1,
          ),
          const ButtonNotificationOtherProfile(
            text: 'Stories',
          ),
          const Divider(
            thickness: 0.1,
            height: 0.1,
          ),
          const ButtonNotificationOtherProfile(
            text: 'Reels',
          ),
          const Divider(
            thickness: 0.1,
            height: 0.1,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'Vídeos ao vivo',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                const Text(
                  'Algumas',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 0.1,
            height: 0.1,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Receba notificações quando Profile Name compartilhar fotos ou videos.',
              style: TextStyle(
                fontFamily: 'Instagram',
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
