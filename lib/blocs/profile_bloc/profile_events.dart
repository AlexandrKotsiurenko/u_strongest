abstract class ProfileEvents {}

class FetchProfileEvent extends ProfileEvents {
  final String uId;

  FetchProfileEvent({required this.uId});
}
