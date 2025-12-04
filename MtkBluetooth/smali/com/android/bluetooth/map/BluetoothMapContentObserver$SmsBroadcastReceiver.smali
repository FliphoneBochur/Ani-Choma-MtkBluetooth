.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0

    .line 3359
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;)V
    .locals 0

    .line 3359
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    return-void
.end method

.method private actionMessageDelivery(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;)V
    .locals 11

    .line 3525
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 3526
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    .line 3528
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1500(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1600()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3532
    const/4 v2, 0x2

    if-eqz v1, :cond_7

    .line 3533
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "BluetoothMapContentObserver"

    if-eqz v3, :cond_5

    .line 3534
    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 3536
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1700()Landroid/net/Uri;

    move-result-object v5

    int-to-long v6, v3

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 3538
    const-string v5, "pdu"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 3539
    const-string v6, "format"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3541
    invoke-static {v5, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 3542
    if-nez v5, :cond_1

    .line 3543
    const-string p1, "actionMessageDelivery: Can\'t get message from pdu"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3572
    if-eqz v1, :cond_0

    .line 3573
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3544
    :cond_0
    return-void

    .line 3547
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v5

    .line 3548
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "3gpp2"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3549
    shr-int/lit8 v5, v5, 0x10

    .line 3550
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$700()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "actionMessageDelivery: 3gpp2 pdu "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    :cond_2
    if-ne v5, v2, :cond_3

    .line 3553
    goto :goto_0

    .line 3552
    :cond_3
    move v0, v5

    .line 3556
    :goto_0
    iput v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->statusDelivered:I

    .line 3557
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$700()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "actionMessageDelivery: uri="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", status="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->statusDelivered:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    :cond_4
    new-instance p1, Landroid/content/ContentValues;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3562
    const-string p2, "status"

    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->statusDelivered:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3563
    const-string p2, "date_sent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3564
    const-string p2, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3565
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1500(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v3, p1, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3566
    goto :goto_1

    .line 3567
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find message for status update: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3572
    :catchall_0
    move-exception p1

    if-eqz v1, :cond_6

    .line 3573
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3575
    :cond_6
    throw p1

    .line 3572
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 3573
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3577
    :cond_8
    iget p1, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->statusDelivered:I

    if-nez p1, :cond_9

    .line 3578
    new-instance p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-wide v6, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    .line 3579
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1100(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v10

    const-string v5, "DeliverySuccess"

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3580
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p2, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1300(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 3581
    goto :goto_2

    .line 3582
    :cond_9
    new-instance p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-wide v3, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    .line 3583
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1100(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    const-string v2, "DeliveryFailure"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3584
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p2, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1300(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 3589
    :goto_2
    return-void
.end method

.method private actionMessageSent(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;J)V
    .locals 10

    .line 3463
    nop

    .line 3465
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$700()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3466
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "actionMessageSent(): msgInfo.failedSent = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothMapContentObserver"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    .line 3471
    iget-boolean v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 3472
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3473
    const-string v0, "BluetoothMapContentObserver"

    const-string v2, "actionMessageSent: result OK"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    :cond_1
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    if-nez v0, :cond_2

    .line 3476
    iget-object v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-static {p1, v0, v1}, Lcom/android/bluetooth/Utils;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to move "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to SENT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMapContentObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3480
    :cond_2
    move p2, v1

    .line 3483
    :cond_3
    :goto_0
    new-instance p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-wide v3, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    const/4 v0, 0x2

    .line 3484
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1100(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    const-string v2, "SendingSuccess"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3485
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1300(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 3487
    goto/16 :goto_2

    .line 3488
    :cond_4
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->retry:I

    if-ne v0, v1, :cond_5

    .line 3490
    iput-boolean v1, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    .line 3491
    iput p2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    .line 3492
    iput-boolean p2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    .line 3493
    new-instance p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-wide v5, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    const/4 v0, 0x4

    .line 3494
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1100(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v9

    const-string v4, "SendingFailure"

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3495
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1300(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 3496
    goto :goto_2

    .line 3497
    :cond_5
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    if-nez v0, :cond_6

    .line 3498
    iget-object v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-static {p1, v0, p2}, Lcom/android/bluetooth/Utils;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result p1

    if-nez p1, :cond_7

    .line 3499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to move "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMapContentObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3502
    :cond_6
    move p2, v1

    .line 3505
    :cond_7
    :goto_1
    new-instance p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-wide v3, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    const/4 v0, 0x5

    .line 3506
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1100(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    const-string v2, "SendingFailure"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3507
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1300(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 3511
    :goto_2
    if-eqz p2, :cond_8

    .line 3513
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1400(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    .line 3514
    :try_start_0
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1400(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object p2

    iget-wide v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3515
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3518
    sget-object p1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 3519
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1500(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 3520
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$300()Z

    move-result p3

    if-eqz p3, :cond_8

    if-lez p2, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Deleted message with Uri = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMapContentObserver"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3515
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 3522
    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 3384
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3385
    const-string v1, "HANDLE"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 3386
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1000(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 3388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothMapContentObserver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    if-nez v1, :cond_0

    .line 3391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceive: no msgInfo found for handle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    return-void

    .line 3395
    :cond_0
    const-string v2, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 3396
    nop

    .line 3397
    const-string v0, "result"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3398
    iget v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    .line 3399
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 3403
    iput-boolean v4, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    .line 3405
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$700()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: msgInfo.partsSent = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", msgInfo.parts = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " result = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    :cond_2
    iget v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    iget v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ne v0, v2, :cond_3

    .line 3411
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->actionMessageSent(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;J)V

    .line 3413
    :cond_3
    goto/16 :goto_1

    :cond_4
    const-string v2, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3414
    const-wide/16 v6, 0x0

    const-string v0, "timestamp"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3415
    nop

    .line 3416
    iget-wide v8, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    cmp-long v0, v8, v6

    if-nez v0, :cond_a

    .line 3417
    iget v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    .line 3418
    const-string v0, "pdu"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 3419
    const-string v2, "format"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3421
    invoke-static {v0, v2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 3422
    if-nez v0, :cond_5

    .line 3423
    const-string p1, "actionMessageDelivery: Can\'t get message from pdu"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    return-void

    .line 3426
    :cond_5
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v0

    .line 3429
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "3gpp2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3430
    shr-int/lit8 v0, v0, 0x10

    .line 3431
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$700()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive actionMessageDelivery: 3gpp2 pdu "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 3434
    move v0, v5

    .line 3437
    :cond_7
    if-eqz v0, :cond_9

    .line 3438
    iput v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->statusDelivered:I

    .line 3439
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$700()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgInfo.statusDelivered = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$900(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    const/4 v3, 0x5

    invoke-static {v0, v2, v3, v5}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    goto :goto_0

    .line 3442
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$900(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-static {v0, v3, v2, v5}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 3445
    :cond_a
    :goto_0
    iget v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    iget v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ne v0, v2, :cond_b

    .line 3446
    invoke-direct {p0, p1, p2, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->actionMessageDelivery(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;)V

    .line 3448
    :cond_b
    goto :goto_1

    .line 3450
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[onReceive]: Unknown action "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    :goto_1
    iget p1, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    iget p2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ne p1, p2, :cond_d

    iget p1, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    iget p2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ne p1, p2, :cond_d

    .line 3453
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1000(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object p1

    iget-wide v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3456
    :cond_d
    return-void
.end method

.method public register()V
    .locals 5

    .line 3361
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3363
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3364
    const-string v2, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3366
    :try_start_0
    const-string v2, "message/*"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3369
    goto :goto_0

    .line 3367
    :catch_0
    move-exception v2

    .line 3368
    const-string v3, "BluetoothMapContentObserver"

    const-string v4, "Wrong mime type!!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3371
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$900(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3372
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 3376
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$900(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3379
    goto :goto_0

    .line 3377
    :catch_0
    move-exception v0

    .line 3380
    :goto_0
    return-void
.end method
