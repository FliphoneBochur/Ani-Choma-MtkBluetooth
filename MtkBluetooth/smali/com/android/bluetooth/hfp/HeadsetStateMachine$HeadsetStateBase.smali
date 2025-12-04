.class abstract Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;
.super Lcom/android/bluetooth/statemachine/State;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HeadsetStateBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method


# virtual methods
.method broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 5

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastAudioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->stateLogD(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 408
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    .line 409
    invoke-static {p3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(I)I

    move-result v1

    .line 410
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "bt_wbs"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    const/4 v2, 0x2

    goto :goto_0

    .line 412
    :cond_0
    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 413
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 407
    const/16 v4, 0x7f

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BIII)V

    .line 414
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetService;->onAudioStateChangedFromStateMachine(Landroid/bluetooth/BluetoothDevice;II)V

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    const-string p2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 419
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p3, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastConnectionState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->stateLogD(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetService;->onConnectionStateChangedFromStateMachine(Landroid/bluetooth/BluetoothDevice;II)V

    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string p2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 399
    const/high16 p1, 0x1000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p3, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method broadcastStateTransitions()V
    .locals 7

    .line 348
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 349
    return-void

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getAudioStateInt()I

    move-result v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getAudioStateInt()I

    move-result v1

    const-string v2, " -> "

    const-string v3, ": "

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 355
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    instance-of v0, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    if-eqz v0, :cond_3

    .line 356
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->stateLogD(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 358
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isInSwitchActiveDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-wide/16 v4, 0x50

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 361
    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getAudioStateInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getAudioStateInt()I

    move-result v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 365
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getAudioStateInt()I

    move-result v0

    const/16 v1, 0x11

    const/16 v4, 0xa

    if-ne v0, v4, :cond_4

    .line 366
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getAudioStateInt()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 367
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/hfp/HeadsetService;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 368
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isInSwitchActiveDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 369
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 370
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-wide/16 v5, 0x3c

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 375
    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getConnectionStateInt()I

    move-result v0

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getConnectionStateInt()I

    move-result v4

    if-eq v0, v4, :cond_6

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection state changed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 377
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->stateLogD(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getConnectionStateInt()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 380
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getConnectionStateInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 381
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isInSwitchActiveDevice()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 383
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDeviceDone()Z

    .line 384
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->broadcastActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 386
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getConnectionStateInt()I

    move-result v1

    .line 387
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getConnectionStateInt()I

    move-result v2

    .line 386
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 389
    :cond_6
    return-void
.end method

.method enforceValidConnectionStateTransition()V
    .locals 4

    .line 432
    nop

    .line 433
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;

    move-result-object v3

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 435
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;

    move-result-object v3

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 440
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v3

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 441
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

    move-result-object v3

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    move-result-object v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    move v2, v1

    goto/16 :goto_b

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;

    move-result-object v0

    if-ne p0, v0, :cond_4

    .line 443
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v3

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    move v2, v1

    goto/16 :goto_b

    .line 444
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;

    move-result-object v0

    if-ne p0, v0, :cond_7

    .line 445
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 448
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

    move-result-object v3

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v3

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 449
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    move-result-object v3

    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    :goto_3
    nop

    :goto_4
    move v2, v1

    goto/16 :goto_b

    .line 450
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v0

    if-ne p0, v0, :cond_a

    .line 451
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;

    move-result-object v3

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    move-result-object v3

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 452
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;

    move-result-object v3

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

    move-result-object v3

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 455
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v3

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v3

    if-ne v0, v3, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    goto :goto_6

    :cond_9
    :goto_5
    nop

    :goto_6
    move v2, v1

    goto/16 :goto_b

    .line 456
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

    move-result-object v0

    if-ne p0, v0, :cond_c

    .line 457
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    if-ne v0, v3, :cond_b

    goto :goto_7

    :cond_b
    move v1, v2

    :goto_7
    move v2, v1

    goto :goto_b

    .line 458
    :cond_c
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    move-result-object v0

    if-ne p0, v0, :cond_e

    .line 459
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v3

    if-ne v0, v3, :cond_d

    goto :goto_8

    :cond_d
    move v1, v2

    :goto_8
    move v2, v1

    goto :goto_b

    .line 460
    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v0

    if-ne p0, v0, :cond_11

    .line 461
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

    move-result-object v3

    if-eq v0, v3, :cond_10

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    move-result-object v3

    if-eq v0, v3, :cond_10

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 465
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    if-ne v0, v3, :cond_f

    goto :goto_9

    :cond_f
    move v1, v2

    goto :goto_a

    :cond_10
    :goto_9
    nop

    :goto_a
    move v2, v1

    .line 467
    :cond_11
    :goto_b
    if-eqz v2, :cond_12

    .line 472
    return-void

    .line 468
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state transition from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 469
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 470
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enter()V
    .locals 4

    .line 314
    const-string v0, "enter..."

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->stateLogD(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    monitor-enter v0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    .line 319
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    instance-of v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mPrevState is null on enter()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->enforceValidConnectionStateTransition()V

    .line 327
    return-void

    .line 320
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exit()V
    .locals 1

    .line 332
    const-string v0, "exit..."

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->stateLogD(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$202(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    .line 336
    return-void
.end method

.method abstract getAudioStateInt()I
.end method

.method abstract getConnectionStateInt()I
.end method

.method public abstract processConnectionEvent(Landroid/os/Message;I)V
.end method

.method stateLogD(Ljava/lang/String;)V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": currentDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method stateLogE(Ljava/lang/String;)V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": currentDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method stateLogI(Ljava/lang/String;)V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": currentDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method stateLogV(Ljava/lang/String;)V
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": currentDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method stateLogW(Ljava/lang/String;)V
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": currentDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method stateLogWtf(Ljava/lang/String;)V
    .locals 2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
