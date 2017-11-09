import '../wildfire.dart';

class User extends ManagedObject<_User>
    implements _User, ManagedAuthResourceOwner {
  @Serialize(input: true, output: false)
  String password;
}

class _User extends ManagedAuthenticatable {
  @Column(unique: true)
  String email;

/* This class inherits the following from ManagedAuthenticatable:

  @primaryKey
  int id;

  @Column(unique: true, indexed: true)
  String username;

  @Column(omitByDefault: true)
  String hashedPassword;

  @Column(omitByDefault: true)
  String salt;

  ManagedSet<ManagedAuthToken> tokens;
 */
}
