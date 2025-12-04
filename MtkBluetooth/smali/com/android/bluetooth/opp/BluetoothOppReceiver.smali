.class public Lcom/android/bluetooth/opp/BluetoothOppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppReceiver.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothOppReceiver"

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 67
    return-void
.end method

.method private cancelNotification(Landroid/content/Context;I)V
    .locals 3

    .line 358
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    const-string v1, "BluetoothOppReceiver"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelNotification id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    nop

    .line 360
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 361
    if-nez p1, :cond_1

    return-void

    .line 362
    :cond_1
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 363
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz p1, :cond_2

    const-string p1, "notMgr.cancel called"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_2
    return-void
.end method

.method private isSDCardRoot(Ljava/lang/String;)Z
    .locals 4

    .line 367
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 368
    return v0

    .line 370
    :cond_0
    nop

    .line 371
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 372
    const-string v1, "[0-9ABCDEF]{4}-[0-9ABCDEF]{4}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 373
    move v2, v0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 374
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 375
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    const/4 p1, 0x1

    return p1

    .line 373
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    :cond_2
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " action :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothOppReceiver"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-nez v2, :cond_0

    return-void

    .line 74
    :cond_0
    const-string v3, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    .line 75
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    .line 77
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 79
    sget-boolean v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v3, :cond_1

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received BT device selected intent, bt device: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_1
    const-string v3, "Received BT device selected intent"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    if-nez v2, :cond_2

    .line 87
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->cleanUpSendingFileInfo()V

    .line 88
    return-void

    .line 90
    :cond_2
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sSendingFileFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 92
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->startTransfer(Landroid/bluetooth/BluetoothDevice;)V

    .line 93
    sget-boolean v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sSendingFileFlag : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sSendingFileFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getBatchSize()I

    move-result v3

    .line 103
    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v0, :cond_4

    .line 104
    const v0, 0x7f0e0030

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 107
    :cond_4
    const v0, 0x7f0e002f

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_1
    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    goto/16 :goto_c

    .line 95
    :cond_5
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore other selected devices : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_6
    return-void

    .line 110
    :cond_7
    move-object/from16 v3, p2

    const-string v7, "android.btopp.intent.action.CONFIRM"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 111
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v0, :cond_8

    .line 112
    const-string v0, "Receiver ACTION_INCOMING_FILE_CONFIRM"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 116
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    goto/16 :goto_c

    :cond_9
    const-string v7, "android.btopp.intent.action.DECLINE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const v8, -0xf4244

    const-string v9, "confirm"

    const/4 v10, 0x0

    if-eqz v7, :cond_b

    .line 122
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_a

    .line 123
    const-string v2, "Receiver ACTION_DECLINE"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 127
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 128
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    invoke-direct {v0, v1, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->cancelNotification(Landroid/content/Context;I)V

    .line 132
    goto/16 :goto_c

    :cond_b
    const-string v7, "android.btopp.intent.action.ACCEPT"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 133
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v0, :cond_c

    .line 134
    const-string v0, "Receiver ACTION_ACCEPT"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 138
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 139
    nop

    .line 140
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 139
    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    goto/16 :goto_c

    :cond_d
    const-string v7, "android.btopp.intent.action.OPEN"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "Error: Can not get data from db"

    const/high16 v13, 0x14000000

    if-nez v11, :cond_37

    const-string v11, "android.btopp.intent.action.LIST"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    goto/16 :goto_9

    .line 172
    :cond_e
    const-string v7, "android.btopp.intent.action.OPEN_OUTBOUND"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v11, "direction"

    if-eqz v7, :cond_10

    .line 173
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v0, :cond_f

    .line 174
    const-string v0, "Received ACTION_OPEN_OUTBOUND_TRANSFER."

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    invoke-virtual {v0, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 181
    goto/16 :goto_c

    :cond_10
    const-string v7, "android.btopp.intent.action.OPEN_INBOUND"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 182
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v0, :cond_11

    .line 183
    const-string v0, "Received ACTION_OPEN_INBOUND_TRANSFER."

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    invoke-virtual {v0, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    goto/16 :goto_c

    :cond_12
    const-string v7, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 191
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v0, :cond_13

    .line 192
    const-string v0, "Received ACTION_OPEN_RECEIVED_FILES."

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    invoke-virtual {v0, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string v2, "android.btopp.intent.extra.SHOW_ALL"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 200
    goto/16 :goto_c

    :cond_14
    const-string v7, "android.btopp.intent.action.HIDE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v13, "visibility"

    if-eqz v7, :cond_18

    .line 201
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v0, :cond_15

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver hide for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_15
    nop

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_17

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 208
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 209
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 210
    nop

    .line 211
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 212
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 213
    if-nez v5, :cond_16

    if-nez v2, :cond_16

    .line 215
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 216
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v1, :cond_16

    .line 219
    const-string v1, "Action_hide received and db updated"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_17
    goto/16 :goto_c

    :cond_18
    const-string v7, "android.btopp.intent.action.HIDE_COMPLETE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 226
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v0, :cond_19

    .line 227
    const-string v0, "Receiver ACTION_COMPLETE_HIDE"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_19
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 230
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 232
    const-string v3, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\')"

    invoke-virtual {v1, v2, v0, v3, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 234
    goto/16 :goto_c

    :cond_1a
    const-string v7, "android.btopp.intent.action.TRANSFER_COMPLETE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 235
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_1b

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver Transfer Complete Intent for "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1b
    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_5

    .line 242
    :cond_1c
    nop

    .line 243
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v2

    .line 245
    if-nez v2, :cond_1d

    .line 246
    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 250
    :cond_1d
    iget-boolean v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mHandoverInitiated:Z

    if-eqz v3, :cond_20

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const-string v4, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    if-ne v3, v6, :cond_1e

    .line 254
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 257
    :cond_1e
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    :goto_2
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    const-string v4, "android.nfc.handover.intent.extra.TRANSFER_ID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    iget-object v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    const-string v4, "android.nfc.handover.intent.extra.ADDRESS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v3

    const-string v4, "android.nfc.handover.intent.extra.TRANSFER_STATUS"

    if-eqz v3, :cond_1f

    .line 264
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    iget-object v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    const-string v4, "android.nfc.handover.intent.extra.TRANSFER_URI"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    const-string v3, "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 271
    :cond_1f
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    :goto_3
    const-string v2, "android.permission.NFC_HANDOVER_STATUS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 275
    return-void

    .line 278
    :cond_20
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 279
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-nez v3, :cond_21

    .line 280
    const v3, 0x7f0e0060

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v2, v6, v5

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 281
    :cond_21
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-ne v3, v6, :cond_24

    .line 282
    const v3, 0x7f0e005c

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v2, v6, v5

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 286
    :cond_22
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 287
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-nez v3, :cond_23

    .line 288
    const v3, 0x7f0e0062

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v2, v6, v5

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 290
    :cond_23
    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-ne v2, v6, :cond_24

    .line 291
    const v2, 0x7f0e0038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 294
    :cond_24
    :goto_4
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_25

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Toast msg == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_25
    if-eqz v10, :cond_26

    .line 298
    invoke-static {v1, v10, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 300
    :cond_26
    invoke-direct {v0, v1, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_8

    .line 239
    :cond_27
    :goto_5
    const-string v0, "Bluetooth not enabled"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 301
    :cond_28
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 302
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_29

    const-string v2, "received Intent.ACTION_MEDIA_EJECT"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_data"

    const-string v2, "uri"

    filled-new-array {v1, v2, v11}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v15, "status == 192"

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 306
    if-nez v5, :cond_2a

    .line 307
    const-string v0, "cursor == null !"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 311
    :cond_2a
    nop

    .line 312
    nop

    .line 314
    nop

    .line 315
    nop

    .line 317
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 318
    sget-boolean v7, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v7, :cond_2b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cursor != null, cursor.count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_2b
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 320
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    sget-boolean v8, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v8, :cond_2c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uriStr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_2c
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    nop

    .line 330
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 331
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "direction = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " filepath = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2d
    const/4 v2, -0x1

    if-eq v7, v2, :cond_33

    if-nez v1, :cond_2e

    goto :goto_7

    .line 337
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    sget-boolean v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v3, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_2f
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->getInstance()Lcom/android/bluetooth/opp/BluetoothOppService;

    move-result-object v3

    .line 340
    invoke-direct {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->isSDCardRoot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz v3, :cond_3c

    .line 341
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v0, :cond_30

    const-string v0, "sdcard is removed, stop task"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_30
    if-ne v7, v6, :cond_31

    .line 344
    iget-object v0, v3, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v0, :cond_32

    .line 345
    iget-object v0, v3, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    goto :goto_6

    .line 347
    :cond_31
    if-nez v7, :cond_32

    .line 348
    iget-object v0, v3, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v0, :cond_32

    .line 349
    iget-object v0, v3, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/16 v1, 0x1ec

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->interrupt(I)V

    .line 352
    :cond_32
    :goto_6
    iget-object v0, v3, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_c

    .line 334
    :cond_33
    :goto_7
    return-void

    .line 325
    :cond_34
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 326
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v0, :cond_35

    const-string v0, "there is no running task"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_35
    return-void

    .line 301
    :cond_36
    :goto_8
    goto/16 :goto_c

    .line 143
    :cond_37
    :goto_9
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v0, :cond_39

    .line 144
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver open for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 147
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver list for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_39
    :goto_a
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 153
    invoke-static {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v2

    .line 154
    if-nez v2, :cond_3a

    .line 155
    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 159
    :cond_3a
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-ne v3, v6, :cond_3b

    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    .line 160
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 162
    iget-object v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 164
    invoke-static {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_b

    .line 166
    :cond_3b
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    invoke-virtual {v2, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 169
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 172
    :goto_b
    nop

    .line 355
    :cond_3c
    :goto_c
    return-void
.end method
