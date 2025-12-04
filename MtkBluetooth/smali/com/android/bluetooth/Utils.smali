.class public final Lcom/android/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final BD_ADDR_LEN:I = 0x6

.field static final BD_UUID_LEN:I = 0x10

.field public static final DEBUG:Z

.field private static final HFP_INBAND_RINGING_SUPPORT:Ljava/lang/String; = "persist.bluetooth.hfp.inband.ringing.support"

.field private static final MICROS_PER_UNIT:I = 0x271

.field public static final PAUSE:C = ','

.field private static final PTS_TEST_MODE_PROPERTY:Ljava/lang/String; = "persist.bluetooth.pts"

.field private static final TAG:Ljava/lang/String; = "BluetoothUtils"

.field public static final WAIT:C = ';'

.field static sForegroundUserId:I

.field static sSystemUiUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    const-string v0, "ro.build.type"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/Utils;->DEBUG:Z

    .line 295
    const/16 v0, -0x2710

    sput v0, Lcom/android/bluetooth/Utils;->sSystemUiUid:I

    .line 300
    sput v0, Lcom/android/bluetooth/Utils;->sForegroundUserId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressToBytes(Ljava/lang/String;)[B
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blockedByLocationOff(Landroid/content/Context;Landroid/os/UserHandle;)Z
    .locals 1

    .line 401
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 402
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result p0

    .line 401
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static byteArrayToInt([B)I
    .locals 1

    .line 138
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result p0

    return p0
.end method

.method public static byteArrayToInt([BI)I
    .locals 1

    .line 148
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 149
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0
.end method

.method public static byteArrayToShort([B)S
    .locals 1

    .line 142
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 143
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .locals 5

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 156
    if-eqz v2, :cond_0

    .line 157
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteArrayToUtf8String([B)Ljava/lang/String;
    .locals 2

    .line 171
    const-string v0, "UTF8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 172
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 173
    nop

    .line 175
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception p0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when parsing byte array to UTF8 String. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    .line 179
    :goto_0
    return-object p0
.end method

.method public static byteArrayToUuid([B)[Landroid/os/ParcelUuid;
    .locals 10

    .line 219
    array-length v0, p0

    div-int/lit8 v0, v0, 0x10

    .line 220
    new-array v1, v0, [Landroid/os/ParcelUuid;

    .line 222
    nop

    .line 224
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 225
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 227
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 228
    new-instance v4, Landroid/os/ParcelUuid;

    new-instance v5, Ljava/util/UUID;

    .line 229
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    add-int/lit8 v8, v3, 0x8

    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v4, v1, v2

    .line 230
    add-int/lit8 v3, v3, 0x10

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-object v1
.end method

.method public static callerIsSystemOrActiveOrManagedUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 344
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 345
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() - Not allowed for non-active user and non-system and non-managed user"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 p0, 0x0

    return p0

    .line 348
    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 336
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result p0

    if-nez p0, :cond_0

    .line 337
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() - Not allowed for non-active user and non-system user"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 p0, 0x0

    return p0

    .line 340
    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkCaller()Z
    .locals 3

    .line 352
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 353
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 354
    sget v2, Lcom/android/bluetooth/Utils;->sForegroundUserId:I

    if-eq v2, v0, :cond_1

    sget v0, Lcom/android/bluetooth/Utils;->sSystemUiUid:I

    .line 355
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    const/16 v0, 0x3e8

    .line 356
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 354
    :goto_1
    return v0
.end method

.method public static checkCallerAllowManagedProfiles(Landroid/content/Context;)Z
    .locals 6

    .line 360
    if-nez p0, :cond_0

    .line 361
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result p0

    return p0

    .line 363
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 364
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 367
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 369
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "user"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 370
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 371
    if-eqz p0, :cond_1

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_1
    const/16 p0, -0x2710

    .line 374
    :goto_0
    sget v5, Lcom/android/bluetooth/Utils;->sForegroundUserId:I

    if-eq v5, v0, :cond_2

    sget v0, Lcom/android/bluetooth/Utils;->sForegroundUserId:I

    if-eq v0, p0, :cond_2

    sget p0, Lcom/android/bluetooth/Utils;->sSystemUiUid:I

    .line 375
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq p0, v0, :cond_2

    const/16 p0, 0x3e8

    .line 376
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v4, 0x1

    .line 381
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    return v4

    .line 381
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 377
    :catch_0
    move-exception p0

    .line 378
    :try_start_1
    const-string v0, "BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCallerAllowManagedProfiles: Exception ex="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    nop

    .line 381
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    return v4

    .line 381
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    throw p0
.end method

.method public static checkCallerHasCoarseLocation(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2

    .line 411
    invoke-static {p0, p4}, Lcom/android/bluetooth/Utils;->blockedByLocationOff(Landroid/content/Context;Landroid/os/UserHandle;)Z

    move-result p4

    const/4 v0, 0x0

    const-string v1, "BluetoothUtils"

    if-eqz p4, :cond_0

    .line 412
    const-string p0, "Permission denial: Location is off."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return v0

    .line 417
    :cond_0
    const-string p4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, p4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 420
    const-string p0, "android:fine_location"

    invoke-static {p1, p0, p2, p3}, Lcom/android/bluetooth/Utils;->isAppOppAllowed(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 422
    const/4 p0, 0x1

    return p0

    .line 425
    :cond_1
    const-string p0, "Permission denial: Need ACCESS_COARSE_LOCATION permission to get scan results"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return v0
.end method

.method public static checkCallerHasCoarseOrFineLocation(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 4

    .line 437
    invoke-static {p0, p4}, Lcom/android/bluetooth/Utils;->blockedByLocationOff(Landroid/content/Context;Landroid/os/UserHandle;)Z

    move-result p4

    const/4 v0, 0x0

    const-string v1, "BluetoothUtils"

    if-eqz p4, :cond_0

    .line 438
    const-string p0, "Permission denial: Location is off."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v0

    .line 442
    :cond_0
    const-string p4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, p4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p4

    const/4 v2, 0x1

    const-string v3, "android:fine_location"

    if-nez p4, :cond_1

    .line 445
    invoke-static {p1, v3, p2, p3}, Lcom/android/bluetooth/Utils;->isAppOppAllowed(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 447
    return v2

    .line 451
    :cond_1
    const-string p4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, p4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    .line 454
    invoke-static {p1, v3, p2, p3}, Lcom/android/bluetooth/Utils;->isAppOppAllowed(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 456
    return v2

    .line 459
    :cond_2
    const-string p0, "Permission denial: Need ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATIONpermission to get scan results"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return v0
.end method

.method public static checkCallerHasFineLocation(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2

    .line 470
    invoke-static {p0, p4}, Lcom/android/bluetooth/Utils;->blockedByLocationOff(Landroid/content/Context;Landroid/os/UserHandle;)Z

    move-result p4

    const/4 v0, 0x0

    const-string v1, "BluetoothUtils"

    if-eqz p4, :cond_0

    .line 471
    const-string p0, "Permission denial: Location is off."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return v0

    .line 475
    :cond_0
    const-string p4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, p4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 478
    const-string p0, "android:fine_location"

    invoke-static {p1, p0, p2, p3}, Lcom/android/bluetooth/Utils;->isAppOppAllowed(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 480
    const/4 p0, 0x1

    return p0

    .line 483
    :cond_1
    const-string p0, "Permission denial: Need ACCESS_FINE_LOCATION permission to get scan results"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return v0
.end method

.method public static checkCallerHasNetworkSettingsPermission(Landroid/content/Context;)Z
    .locals 1

    .line 492
    const-string v0, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkCallerHasNetworkSetupWizardPermission(Landroid/content/Context;)Z
    .locals 1

    .line 500
    const-string v0, "android.permission.NETWORK_SETUP_WIZARD"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkCallerHasScanWithoutLocationPermission(Landroid/content/Context;)Z
    .locals 1

    .line 509
    const-string v0, "android.permission.RADIO_SCAN_WITHOUT_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 609
    if-nez p0, :cond_0

    .line 610
    const/4 p0, 0x0

    return-object p0

    .line 612
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 615
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 616
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 618
    invoke-static {v3}, Lcom/android/bluetooth/Utils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 619
    const/16 v3, 0x2c

    goto :goto_1

    .line 620
    :cond_1
    invoke-static {v3}, Lcom/android/bluetooth/Utils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 621
    const/16 v3, 0x3b

    .line 623
    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 267
    new-array p2, p2, [B

    .line 268
    nop

    .line 269
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_0

    .line 270
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method public static debugGetAdapterStateString(I)Ljava/lang/String;
    .locals 0

    .line 236
    packed-switch p0, :pswitch_data_0

    .line 246
    const-string p0, "UNKNOWN"

    return-object p0

    .line 244
    :pswitch_0
    const-string p0, "STATE_TURNING_OFF"

    return-object p0

    .line 240
    :pswitch_1
    const-string p0, "STATE_ON"

    return-object p0

    .line 242
    :pswitch_2
    const-string p0, "STATE_TURNING_ON"

    return-object p0

    .line 238
    :pswitch_3
    const-string p0, "STATE_OFF"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ellipsize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 252
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    return-object p0

    .line 255
    :cond_0
    if-nez p0, :cond_1

    .line 256
    const/4 p0, 0x0

    return-object p0

    .line 258
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 259
    return-object p0

    .line 261
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\u22ef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static enforceAdminPermission(Landroid/content/ContextWrapper;)V
    .locals 2

    .line 393
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public static enforceBluetoothAdminPermission(Landroid/content/Context;)V
    .locals 2

    .line 312
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public static enforceBluetoothPermission(Landroid/content/Context;)V
    .locals 2

    .line 306
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public static enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V
    .locals 2

    .line 318
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public static enforceDumpPermission(Landroid/content/Context;)V
    .locals 2

    .line 330
    const-string v0, "android.permission.DUMP"

    const-string v1, "Need DUMP permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public static enforceInstrumentationTestMode()V
    .locals 2

    .line 559
    invoke-static {}, Lcom/android/bluetooth/Utils;->isInstrumentationTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    return-void

    .line 560
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not in BluetoothInstrumentationTest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforceLocalMacAddressPermission(Landroid/content/Context;)V
    .locals 2

    .line 324
    const-string v0, "android.permission.LOCAL_MAC_ADDRESS"

    const-string v1, "Need LOCAL_MAC_ADDRESS permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public static getAddressStringFromByte([B)Ljava/lang/String;
    .locals 3

    .line 92
    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aget-byte v2, p0, v1

    .line 97
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aget-byte p0, p0, v1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v0, v1

    .line 96
    const-string p0, "%02X:%02X:%02X:%02X:%02X:%02X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 0

    .line 115
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytesFromAddress(Ljava/lang/String;)[B
    .locals 5

    .line 123
    nop

    .line 124
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 126
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 127
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    .line 128
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    return-object v0
.end method

.method public static getLocalTimeString()Ljava/lang/String;
    .locals 2

    .line 589
    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 590
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 589
    return-object v0
.end method

.method public static getMaskAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4

    .line 101
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p0

    .line 104
    if-eqz p0, :cond_3

    array-length v1, p0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 110
    :cond_2
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-byte v0, p0, v0

    .line 111
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x3

    const/4 v2, 0x5

    aget-byte p0, p0, v2

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v1, v0

    .line 110
    const-string p0, "%02X:%02X:XX-XX:%02X:%02X"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 105
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getUidPidString()Ljava/lang/String;
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid/pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intToByteArray(I)[B
    .locals 2

    .line 183
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 184
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static isAppOppAllowed(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 526
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHfpInbandRingingSupport()Z
    .locals 2

    .line 661
    const-string v0, "persist.bluetooth.hfp.inband.ringing.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isInstrumentationTestMode()Z
    .locals 2

    .line 548
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.bluetooth.FileSystemWriteTest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    return v0
.end method

.method private static isPause(C)Z
    .locals 1

    .line 84
    const/16 v0, 0x70

    if-eq p0, v0, :cond_1

    const/16 v0, 0x50

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPtsTestMode()Z
    .locals 2

    .line 571
    const-string v0, "persist.bluetooth.pts"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isQApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 516
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x1d

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 518
    :catch_0
    move-exception p0

    .line 521
    return v0
.end method

.method private static isToneWait(C)Z
    .locals 1

    .line 88
    const/16 v0, 0x77

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static millsToUnit(I)I
    .locals 4

    .line 534
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    const-wide/16 v2, 0x271

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;Z)Z
    .locals 6

    .line 637
    const/4 v0, 0x0

    .line 646
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 637
    if-nez p1, :cond_0

    .line 638
    return v0

    .line 641
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 642
    const-string v3, "type"

    const-string v4, "read"

    const/4 v5, 0x1

    if-eqz p2, :cond_1

    .line 643
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    :goto_0
    const-string p2, "error_code"

    invoke-virtual {v2, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v2, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-ne v5, p0, :cond_2

    move v0, v5

    :cond_2
    return v0
.end method

.method public static safeCloseStream(Ljava/io/InputStream;)V
    .locals 2

    .line 276
    if-eqz p0, :cond_0

    .line 278
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    goto :goto_0

    .line 279
    :catchall_0
    move-exception p0

    .line 280
    const-string v0, "BluetoothUtils"

    const-string v1, "Error closing stream"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    :cond_0
    :goto_0
    return-void
.end method

.method public static safeCloseStream(Ljava/io/OutputStream;)V
    .locals 2

    .line 286
    if-eqz p0, :cond_0

    .line 288
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    goto :goto_0

    .line 289
    :catchall_0
    move-exception p0

    .line 290
    const-string v0, "BluetoothUtils"

    const-string v1, "Error closing stream"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    :cond_0
    :goto_0
    return-void
.end method

.method public static setForegroundUserId(I)V
    .locals 0

    .line 302
    sput p0, Lcom/android/bluetooth/Utils;->sForegroundUserId:I

    .line 303
    return-void
.end method

.method public static setSystemUiUid(I)V
    .locals 0

    .line 297
    sput p0, Lcom/android/bluetooth/Utils;->sSystemUiUid:I

    .line 298
    return-void
.end method

.method public static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 597
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 599
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_1

    goto :goto_0

    .line 601
    :cond_1
    return-void
.end method

.method public static uuidToByteArray(Landroid/os/ParcelUuid;)[B
    .locals 5

    .line 190
    nop

    .line 191
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 192
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 194
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    .line 196
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    .line 197
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 198
    const/16 p0, 0x8

    invoke-virtual {v0, p0, v3, v4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static uuidsToByteArray([Landroid/os/ParcelUuid;)[B
    .locals 7

    .line 203
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x10

    .line 204
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 205
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 208
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 209
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    .line 211
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 212
    mul-int/lit8 v2, v1, 0x10

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 213
    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2, v5, v6}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method
