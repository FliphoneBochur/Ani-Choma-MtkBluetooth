.class Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AvrcpTargetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpTargetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvrcpBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpTargetService;Lcom/android/bluetooth/avrcp/AvrcpTargetService$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;-><init>(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 113
    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 114
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$000(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$000(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v1, p2, v1}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sendMediaUpdate(ZZZ)V

    goto/16 :goto_1

    .line 118
    :cond_1
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "AvrcpTargetService"

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    .line 119
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$000(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 121
    :cond_2
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 122
    if-nez p1, :cond_3

    return-void

    .line 124
    :cond_3
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 125
    if-nez p2, :cond_6

    .line 127
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$000(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->disconnectDevice(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 128
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$200()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request to disconnect device "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_4
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 134
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 135
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 136
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 137
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$300(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    .line 138
    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    .line 139
    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$400(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->getAbsoluteVolumeSupported(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 140
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stream volume change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$400(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->storeVolumeForDevice(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .line 133
    :cond_6
    :goto_0
    nop

    .line 147
    :cond_7
    :goto_1
    return-void
.end method
