.class Lcom/android/bluetooth/btservice/ActiveDeviceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ActiveDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/ActiveDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$1;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 137
    const-string v0, "BluetoothActiveDeviceManager"

    if-nez p1, :cond_0

    .line 138
    const-string p1, "Received intent with null action"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 141
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v7

    goto :goto_0

    :sswitch_1
    const-string v2, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_3
    const-string v2, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_4
    const-string v2, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_5
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    if-eq v1, v7, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unexpected intent, action="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$1;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$000(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 165
    goto :goto_1

    .line 159
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$1;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$000(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 161
    goto :goto_1

    .line 155
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$1;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$000(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 157
    goto :goto_1

    .line 151
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$1;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$000(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 153
    goto :goto_1

    .line 147
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$1;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$000(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v6, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 149
    goto :goto_1

    .line 143
    :cond_7
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$1;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$000(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v7, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 145
    nop

    .line 170
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b36f014 -> :sswitch_5
        0x10531fc -> :sswitch_4
        0x1d0d7e43 -> :sswitch_3
        0x2083ec2d -> :sswitch_2
        0x461dab18 -> :sswitch_1
        0x4a286686 -> :sswitch_0
    .end sparse-switch
.end method
