.class Lcom/android/bluetooth/btservice/SilenceDeviceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SilenceDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/SilenceDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$1;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 87
    const-string v0, "SilenceDeviceManager"

    if-nez p1, :cond_0

    .line 88
    const-string p1, "Received intent with null action"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 91
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_2
    const-string v2, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v2, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unexpected intent, action="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$1;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->access$000(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x15

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 107
    goto :goto_1

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$1;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->access$000(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x14

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 103
    goto :goto_1

    .line 97
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$1;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->access$000(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 99
    goto :goto_1

    .line 93
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$1;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->access$000(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 95
    nop

    .line 112
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10531fc -> :sswitch_3
        0x1d0d7e43 -> :sswitch_2
        0x2083ec2d -> :sswitch_1
        0x4a286686 -> :sswitch_0
    .end sparse-switch
.end method
