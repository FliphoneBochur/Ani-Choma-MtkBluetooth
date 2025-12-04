.class Lcom/android/bluetooth/hfp/HeadsetService$1;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Intent;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    .line 449
    const/4 v0, 0x7

    invoke-virtual {p1, v0, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 428
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 429
    if-nez p1, :cond_0

    .line 430
    const-string p1, "HeadsetService"

    const-string p2, "mHeadsetReceiver, action is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void

    .line 433
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :goto_0
    move v0, v4

    :goto_1
    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_6

    if-eq v0, v1, :cond_2

    .line 500
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown action "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HeadsetService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 477
    :cond_2
    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 479
    nop

    .line 480
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 479
    const-string v0, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bond state changed for device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->access$200(Ljava/lang/String;)V

    .line 483
    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    .line 484
    goto/16 :goto_2

    .line 486
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->access$300(Lcom/android/bluetooth/hfp/HeadsetService;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->access$300(Lcom/android/bluetooth/hfp/HeadsetService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 488
    if-nez v0, :cond_4

    .line 489
    monitor-exit p1

    goto/16 :goto_2

    .line 491
    :cond_4
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result v0

    if-eqz v0, :cond_5

    .line 493
    monitor-exit p1

    goto/16 :goto_2

    .line 495
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->removeStateMachine(Landroid/bluetooth/BluetoothDevice;)V

    .line 496
    monitor-exit p1

    .line 497
    goto/16 :goto_2

    .line 496
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 455
    :cond_6
    const-string p1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 457
    nop

    .line 458
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received BluetoothDevice.ACTION_CONNECTION_ACCESS_REPLY, device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->access$200(Ljava/lang/String;)V

    .line 461
    if-ne p1, v3, :cond_b

    .line 462
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->access$300(Lcom/android/bluetooth/hfp/HeadsetService;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    .line 463
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->access$300(Lcom/android/bluetooth/hfp/HeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 464
    if-nez v1, :cond_7

    .line 467
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find state machine for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/bluetooth/hfp/HeadsetService;->access$200(Ljava/lang/String;)V

    .line 468
    monitor-exit p1

    return-void

    .line 470
    :cond_7
    const/16 v0, 0x8

    invoke-virtual {v1, v0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 472
    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    .line 447
    :cond_8
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 448
    const/4 v0, 0x6

    if-ne p1, v0, :cond_b

    .line 449
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    new-instance v0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$1$eJt5KOpRmibPD3Tpb-ARPmHl8aw;

    invoke-direct {v0, p2}, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$1$eJt5KOpRmibPD3Tpb-ARPmHl8aw;-><init>(Landroid/content/Intent;)V

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->access$100(Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)V

    goto :goto_2

    .line 435
    :cond_9
    const-string p1, "level"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 436
    const-string v0, "scale"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 437
    if-ltz p1, :cond_c

    if-gtz p2, :cond_a

    goto :goto_3

    .line 442
    :cond_a
    mul-int/lit8 p1, p1, 0x5

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 443
    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {p2}, Lcom/android/bluetooth/hfp/HeadsetService;->access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setCindBatteryCharge(I)V

    .line 444
    nop

    .line 502
    :cond_b
    :goto_2
    return-void

    .line 438
    :cond_c
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad Battery Changed intent: batteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", scale="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HeadsetService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73abbf83 -> :sswitch_3
        -0x5bb23923 -> :sswitch_2
        -0x2b3dd9ef -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch
.end method
