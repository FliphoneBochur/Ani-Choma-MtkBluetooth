.class public Lcom/android/bluetooth/hfp/AtPhonebook;
.super Ljava/lang/Object;
.source "AtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final CALLS_PROJECTION:[Ljava/lang/String;

.field private static final DBG:Z

.field private static final INCOMING_CALL_WHERE:Ljava/lang/String; = "type=1"

.field private static final MAX_PHONEBOOK_SIZE:I = 0x4000

.field private static final MISSED_CALL_WHERE:Ljava/lang/String; = "type=3"

.field private static final OUTGOING_CALL_WHERE:Ljava/lang/String; = "type=2"

.field private static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothAtPhonebook"

.field static final TYPE_READ:I = 0x0

.field static final TYPE_SET:I = 0x1

.field static final TYPE_TEST:I = 0x2

.field static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mCharacterSet:Ljava/lang/String;

.field private mCheckingAccessPermission:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCpbrIndex1:I

.field private mCpbrIndex2:I

.field private mCurrentPhonebook:Ljava/lang/String;

.field private mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

.field private final mPairingPackage:Ljava/lang/String;

.field private final mPhonebooks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    nop

    .line 48
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hfp/AtPhonebook;->DBG:Z

    .line 55
    const-string v0, "_id"

    const-string v1, "number"

    const-string v2, "presentation"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/hfp/AtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    .line 62
    const-string v1, "display_name"

    const-string v2, "data1"

    const-string v3, "data2"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/hfp/AtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetNativeInterface;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    .line 104
    iput-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    .line 105
    const v0, 0x7f0e0069

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPairingPackage:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    .line 107
    iput-object p2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    .line 108
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    new-instance p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    const-string v1, "DC"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    new-instance p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {p2, p0, v0}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    const-string v1, "RC"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    new-instance p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {p2, p0, v0}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    const-string v1, "MC"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    new-instance p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {p2, p0, v0}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    const-string v0, "ME"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    .line 113
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 114
    return-void
.end method

.method private checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    .line 631
    const-string v0, "checkAccessPermission"

    invoke-static {v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    .line 634
    if-nez v0, :cond_0

    .line 635
    const-string v1, "checkAccessPermission - ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 636
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    iget-object v2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPairingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const/4 v2, 0x2

    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 643
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 646
    :cond_0
    return v0
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 0

    .line 160
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized getMaxPhoneBookSize(I)I
    .locals 1

    monitor-enter p0

    .line 475
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 476
    :cond_0
    :try_start_0
    div-int/lit8 v0, p1, 0x2

    add-int/2addr p1, v0

    .line 477
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->roundUpToPowerOfTwo(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 474
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static getPhoneType(I)Ljava/lang/String;
    .locals 1

    .line 650
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 663
    const-string p0, "O"

    return-object p0

    .line 659
    :cond_0
    const-string p0, "F"

    return-object p0

    .line 656
    :cond_1
    const-string p0, "W"

    return-object p0

    .line 654
    :cond_2
    const-string p0, "M"

    return-object p0

    .line 652
    :cond_3
    const-string p0, "H"

    return-object p0
.end method

.method private declared-synchronized getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    .locals 2

    monitor-enter p0

    .line 393
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 394
    monitor-exit p0

    return-object v0

    .line 396
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    .line 397
    if-nez v1, :cond_1

    .line 398
    new-instance v1, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v1, p0, v0}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    .line 400
    :cond_1
    if-nez p2, :cond_2

    iget-object p2, v1, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez p2, :cond_3

    .line 401
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->queryPhonebook(Ljava/lang/String;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    .line 402
    monitor-exit p0

    return-object v0

    .line 406
    :cond_3
    monitor-exit p0

    return-object v1

    .line 392
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 668
    const-string v0, "BluetoothAtPhonebook"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method

.method private declared-synchronized queryPhonebook(Ljava/lang/String;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)Z
    .locals 8

    monitor-enter p0

    .line 410
    nop

    .line 411
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    const-string v1, "ME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 414
    move v1, v3

    goto :goto_1

    .line 415
    :cond_0
    const-string v1, "DC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    const-string v1, "android:query-arg-sql-selection"

    const-string v4, "type=2"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_1
    const-string v1, "RC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    const-string v1, "android:query-arg-sql-selection"

    const-string v4, "type=1"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_2
    const-string v1, "MC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 420
    const-string v1, "android:query-arg-sql-selection"

    const-string v4, "type=3"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_0
    move v1, v2

    :goto_1
    const-string v4, "android:query-arg-limit"

    const/16 v5, 0x4000

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    iget-object v4, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 426
    iget-object v4, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 427
    iput-object v5, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 430
    :cond_3
    const/4 v4, -0x1

    if-eqz v1, :cond_5

    .line 431
    const-string v1, "android:query-arg-sql-sort-order"

    const-string v6, "date DESC"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/bluetooth/hfp/AtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v0, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 434
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 435
    monitor-exit p0

    return v3

    .line 438
    :cond_4
    :try_start_1
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberColumn:I

    .line 439
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "presentation"

    .line 440
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberPresentationColumn:I

    .line 441
    iput v4, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    .line 442
    iput v4, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    goto :goto_2

    .line 444
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 445
    const-string v6, "android:query-arg-sql-sort-order"

    const-string v7, "data1"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v6, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/bluetooth/hfp/AtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6, v1, v7, v0, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 448
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_6

    .line 449
    monitor-exit p0

    return v3

    .line 452
    :cond_6
    :try_start_2
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberColumn:I

    .line 453
    iput v4, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberPresentationColumn:I

    .line 454
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    .line 455
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    .line 457
    :goto_2
    const-string v0, "BluetoothAtPhonebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refreshed phonebook "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " results"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    monitor-exit p0

    return v2

    .line 422
    :cond_7
    monitor-exit p0

    return v3

    .line 409
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private roundUpToPowerOfTwo(I)I
    .locals 1

    .line 481
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 482
    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 483
    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 484
    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 485
    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 486
    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 118
    return-void
.end method

.method public getCheckingAccessPermission()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    return v0
.end method

.method public getLastDialledNumber()Ljava/lang/String;
    .locals 7

    .line 122
    const-string v0, "number"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 124
    const-string v3, "android:query-arg-sql-selection"

    const-string v4, "type=2"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v3, "android:query-arg-sql-sort-order"

    const-string v4, "date DESC"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v3, "android:query-arg-limit"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    iget-object v3, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v1, v2, v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 130
    const-string v2, "BluetoothAtPhonebook"

    if-nez v1, :cond_0

    .line 131
    const-string v0, "getLastDialledNumber, cursor is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v6

    .line 135
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 137
    const-string v0, "getLastDialledNumber, cursor.getCount is 0"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v6

    .line 140
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 141
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 142
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 144
    return-object v0
.end method

.method handleCpbrCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 8

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCpbrCommand - atString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 279
    nop

    .line 280
    nop

    .line 281
    nop

    .line 282
    const/4 v0, 0x3

    const/16 v1, 0x19

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v5, :cond_4

    if-eq p2, v2, :cond_0

    .line 381
    const-string p1, "handleCpbrCommand - invalid chars"

    invoke-static {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 382
    nop

    .line 383
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p3, v4, v1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    goto/16 :goto_3

    .line 289
    :cond_0
    const-string p1, "handleCpbrCommand - test command"

    invoke-static {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const-string p2, "SM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 292
    goto :goto_0

    .line 294
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object p1

    .line 295
    if-nez p1, :cond_2

    .line 296
    nop

    .line 297
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p3, v4, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 299
    goto/16 :goto_3

    .line 301
    :cond_2
    iget-object p2, p1, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCpbrCommand - size = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 303
    iget-object p2, p1, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 304
    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 306
    :goto_0
    if-nez v4, :cond_3

    .line 308
    move v4, v5

    .line 310
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "+CPBR: (1-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "),30,30"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 311
    nop

    .line 312
    iget-object p2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p2, p3, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseString(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    .line 313
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p3, v5, v3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 314
    goto/16 :goto_3

    .line 320
    :cond_4
    const-string p2, "handleCpbrCommand - set/read command"

    invoke-static {p2}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 321
    iget p2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    if-eq p2, v3, :cond_5

    .line 323
    nop

    .line 324
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p3, v4, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 326
    goto/16 :goto_3

    .line 331
    :cond_5
    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v0, v2, :cond_6

    .line 332
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p3, v4, v3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 334
    goto/16 :goto_3

    .line 336
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    .line 337
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 339
    move p2, v4

    :goto_1
    array-length v0, p1

    if-ge p2, v0, :cond_7

    .line 340
    aget-object v0, p1, p2

    const/16 v6, 0x3b

    const/16 v7, 0x20

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    .line 339
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 343
    :cond_7
    :try_start_0
    aget-object p2, p1, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 344
    array-length v0, p1

    if-ne v0, v5, :cond_8

    .line 345
    move p1, p2

    goto :goto_2

    .line 347
    :cond_8
    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_2
    nop

    .line 356
    iput p2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 357
    iput p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    .line 358
    iput-boolean v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 360
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 361
    if-ne p1, v5, :cond_9

    .line 362
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 363
    invoke-virtual {p0, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->processCpbrCommand(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 364
    iput v3, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput v3, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 365
    iget-object p2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p2, p3, p1, v3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 367
    goto :goto_3

    .line 368
    :cond_9
    if-ne p1, v2, :cond_a

    .line 369
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 370
    iput v3, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput v3, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 371
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p3, v4, v4}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    goto :goto_3

    .line 349
    :catch_0
    move-exception p1

    .line 350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCpbrCommand - exception - invalid chars: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 351
    nop

    .line 352
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p3, v4, v1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 354
    nop

    .line 385
    :cond_a
    :goto_3
    return-void
.end method

.method public handleCpbsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCpbsCommand - atString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 211
    nop

    .line 212
    nop

    .line 213
    nop

    .line 214
    const/4 v0, 0x4

    const-string v1, "SM"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p2, :cond_8

    const/4 v6, 0x2

    if-eq p2, v4, :cond_1

    if-eq p2, v6, :cond_0

    .line 268
    const-string p1, "handleCpbsCommand - invalid chars"

    invoke-static {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 269
    const/16 v0, 0x19

    goto/16 :goto_3

    .line 237
    :cond_0
    const-string p1, "handleCpbsCommand - test command"

    invoke-static {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 238
    nop

    .line 239
    nop

    .line 240
    const-string v2, "+CPBS: (\"ME\",\"SM\",\"DC\",\"RC\",\"MC\")"

    move v3, v4

    move v0, v5

    goto/16 :goto_3

    .line 242
    :cond_1
    const-string p2, "handleCpbsCommand - set command"

    invoke-static {p2}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 243
    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 245
    array-length p2, p1

    if-lt p2, v6, :cond_7

    aget-object p2, p1, v4

    if-nez p2, :cond_2

    goto :goto_2

    .line 249
    :cond_2
    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 250
    :goto_0
    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 253
    :cond_3
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 256
    :cond_4
    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 257
    sget-boolean p2, Lcom/android/bluetooth/hfp/AtPhonebook;->DBG:Z

    if-eqz p2, :cond_5

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dont know phonebook: \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 260
    :cond_5
    const/4 v0, 0x3

    .line 261
    goto/16 :goto_3

    .line 263
    :cond_6
    iput-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    .line 264
    nop

    .line 265
    move v3, v4

    move v0, v5

    goto :goto_3

    .line 246
    :cond_7
    :goto_2
    nop

    .line 247
    goto :goto_3

    .line 216
    :cond_8
    const-string p1, "handleCpbsCommand - read command"

    invoke-static {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "+CPBS: \"SM\",0,"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook;->getMaxPhoneBookSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    nop

    .line 221
    move v3, v4

    move v0, v5

    goto :goto_3

    .line 223
    :cond_9
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object p1

    .line 224
    if-nez p1, :cond_a

    .line 225
    nop

    .line 226
    goto :goto_3

    .line 228
    :cond_a
    iget-object p2, p1, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+CPBS: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/AtPhonebook;->getMaxPhoneBookSize(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 232
    iget-object v0, p1, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 233
    iput-object v2, p1, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 234
    nop

    .line 235
    move-object v2, p2

    move v3, v4

    move v0, v5

    .line 271
    :goto_3
    if-eqz v2, :cond_b

    .line 272
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p3, v2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseString(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    .line 274
    :cond_b
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p3, v3, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 275
    return-void
.end method

.method public handleCscsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 8

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCscsCommand - atString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 169
    const-string v0, "\""

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_6

    const/4 v5, 0x2

    if-eq p2, v1, :cond_1

    if-eq p2, v5, :cond_0

    .line 199
    const-string p1, "handleCscsCommand - Invalid chars"

    invoke-static {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 200
    const/16 v3, 0x19

    move v1, v2

    goto/16 :goto_2

    .line 176
    :cond_0
    const-string p1, "handleCscsCommand - Test Command"

    invoke-static {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 177
    nop

    .line 178
    nop

    .line 179
    const-string v4, "+CSCS: (\"UTF-8\",\"IRA\",\"GSM\")"

    goto/16 :goto_2

    .line 181
    :cond_1
    const-string p2, "handleCscsCommand - Set Command"

    invoke-static {p2}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 182
    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 183
    array-length v7, v6

    if-lt v7, v5, :cond_5

    aget-object v5, v6, v1

    if-nez v5, :cond_2

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    .line 188
    const-string p2, ""

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 189
    const-string p2, "GSM"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "IRA"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 190
    const-string p2, "UTF8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 194
    :cond_3
    const/4 v3, 0x4

    .line 196
    move v1, v2

    goto :goto_2

    .line 191
    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 192
    goto :goto_2

    .line 184
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p3, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 185
    move v1, v2

    goto :goto_2

    .line 171
    :cond_6
    const-string p1, "handleCscsCommand - Read Command"

    invoke-static {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "+CSCS: \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    nop

    .line 174
    nop

    .line 202
    :goto_2
    if-eqz v4, :cond_7

    .line 203
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p3, v4}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseString(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    .line 205
    :cond_7
    iget-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p3, v1, v3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 206
    return-void
.end method

.method processCpbrCommand(Landroid/bluetooth/BluetoothDevice;)I
    .locals 14

    .line 491
    const-string v0, "processCpbrCommand"

    invoke-static {v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 492
    nop

    .line 493
    nop

    .line 494
    nop

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const-string v1, "SM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 500
    nop

    .line 501
    return v1

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v0

    .line 506
    const-string v2, "BluetoothAtPhonebook"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 507
    const-string p1, "pbr is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    nop

    .line 509
    return v3

    .line 516
    :cond_1
    iget-object v4, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_15

    iget v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    if-lez v4, :cond_15

    iget v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    if-lt v5, v4, :cond_15

    iget-object v5, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 517
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-le v4, v5, :cond_2

    goto/16 :goto_8

    .line 523
    :cond_2
    iget v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iget-object v5, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 524
    const-string v4, "max index requested is greater than number of records available, resetting it"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    .line 529
    :cond_3
    nop

    .line 530
    nop

    .line 531
    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    sub-int/2addr v4, v1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCpbrIndex1 = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and mCpbrIndex2 = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 533
    iget v2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    :goto_0
    iget v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    const/4 v5, 0x0

    if-gt v2, v4, :cond_13

    .line 534
    iget-object v4, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v6, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberColumn:I

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 535
    nop

    .line 536
    nop

    .line 537
    iget v6, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 541
    iget-object v8, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 542
    invoke-static {v6, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v6, "display_name"

    const-string v10, "type"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 541
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 546
    if-eqz v6, :cond_5

    .line 547
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 548
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 549
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    goto :goto_1

    .line 547
    :cond_4
    move-object v8, v5

    .line 551
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 546
    :cond_5
    move-object v8, v5

    .line 553
    :goto_2
    sget-boolean v6, Lcom/android/bluetooth/hfp/AtPhonebook;->DBG:Z

    if-eqz v6, :cond_6

    if-nez v8, :cond_6

    .line 554
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caller ID lookup failed for "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 557
    :cond_6
    goto :goto_3

    :cond_7
    iget v6, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    if-eq v6, v7, :cond_8

    .line 558
    iget-object v6, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v8, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 560
    :cond_8
    const-string v6, "processCpbrCommand: empty name and number"

    invoke-static {v6}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    move-object v8, v5

    .line 562
    :goto_3
    const-string v6, ""

    if-nez v8, :cond_9

    .line 563
    move-object v8, v6

    .line 565
    :cond_9
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 566
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x1c

    if-le v9, v10, :cond_a

    .line 567
    invoke-virtual {v8, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 570
    :cond_a
    iget v9, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    if-eq v9, v7, :cond_b

    .line 571
    iget-object v9, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v10, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 572
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhoneType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 575
    :cond_b
    if-nez v4, :cond_c

    .line 576
    move-object v4, v6

    .line 578
    :cond_c
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v9

    .line 580
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 581
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 582
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x1e

    if-le v10, v11, :cond_d

    .line 583
    invoke-virtual {v4, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 585
    :cond_d
    nop

    .line 586
    iget v10, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberPresentationColumn:I

    if-eq v10, v7, :cond_e

    .line 587
    iget-object v7, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v10, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberPresentationColumn:I

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_4

    .line 586
    :cond_e
    move v7, v1

    .line 589
    :goto_4
    const v10, 0x7f0e0092

    if-eq v7, v1, :cond_f

    .line 590
    nop

    .line 593
    iget-object v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 589
    :cond_f
    move-object v6, v4

    .line 598
    :goto_5
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    const-string v7, "GSM"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 599
    invoke-static {v8}, Lcom/android/bluetooth/util/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v4

    .line 600
    if-nez v4, :cond_10

    .line 601
    iget-object v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 603
    :cond_10
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    .line 607
    :cond_11
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+CPBR: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 608
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n\r\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 609
    nop

    .line 610
    iget-object v6, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {v6, p1, v4}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseString(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    .line 611
    iget-object v4, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_12

    .line 612
    goto :goto_7

    .line 533
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 615
    :cond_13
    :goto_7
    iget-object p1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz p1, :cond_14

    .line 616
    iget-object p1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 617
    iput-object v5, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 619
    :cond_14
    return v1

    .line 518
    :cond_15
    :goto_8
    nop

    .line 519
    const-string p1, "Invalid request or no results, returning"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return v1
.end method

.method declared-synchronized resetAtState()V
    .locals 1

    monitor-enter p0

    .line 462
    :try_start_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCheckingAccessPermission(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 153
    return-void
.end method

.method public setCpbrIndex(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 157
    return-void
.end method
