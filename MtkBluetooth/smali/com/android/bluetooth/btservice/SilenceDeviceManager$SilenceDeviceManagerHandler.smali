.class Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;
.super Landroid/os/Handler;
.source "SilenceDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/SilenceDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SilenceDeviceManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/SilenceDeviceManager;Landroid/os/Looper;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    .line 117
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 118
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 122
    invoke-static {}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->access$100()Z

    move-result v0

    const-string v1, "SilenceDeviceManager"

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    const/16 v4, 0xa

    const-string v5, "android.bluetooth.profile.extra.STATE"

    const-string v6, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v7, -0x1

    const-string v8, "android.bluetooth.device.extra.DEVICE"

    const/4 v9, 0x2

    if-eq v0, v4, :cond_8

    const/16 v4, 0xb

    if-eq v0, v4, :cond_5

    const/16 v2, 0x14

    if-eq v0, v2, :cond_3

    const/16 v2, 0x15

    if-eq v0, v2, :cond_1

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 193
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 194
    nop

    .line 195
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->getSilenceMode(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {v0, p1, v3}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->setSilenceMode(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 201
    :cond_2
    goto/16 :goto_3

    .line 182
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 183
    nop

    .line 184
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 185
    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->getSilenceMode(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {v0, p1, v3}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->setSilenceMode(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 190
    :cond_4
    goto/16 :goto_3

    .line 158
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 159
    nop

    .line 160
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 161
    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 162
    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 164
    if-ne p1, v9, :cond_6

    .line 166
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {p1, v0, v2}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->addConnectedDevice(Landroid/bluetooth/BluetoothDevice;I)V

    .line 167
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->access$200(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 168
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->access$200(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    :cond_6
    if-ne v1, v9, :cond_7

    .line 172
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {p1, v0, v2}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->removeConnectedDevice(Landroid/bluetooth/BluetoothDevice;I)V

    .line 173
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->isBluetoothAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 174
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {p1, v0, v3}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->handleSilenceDeviceStateChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 175
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->access$200(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_7
    :goto_0
    goto :goto_3

    .line 134
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 135
    nop

    .line 136
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 137
    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 138
    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 140
    if-ne p1, v9, :cond_9

    .line 142
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {p1, v0, v9}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->addConnectedDevice(Landroid/bluetooth/BluetoothDevice;I)V

    .line 143
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->access$200(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 144
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->access$200(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 146
    :cond_9
    if-ne v1, v9, :cond_a

    .line 148
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {p1, v0, v9}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->removeConnectedDevice(Landroid/bluetooth/BluetoothDevice;I)V

    .line 149
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->isBluetoothAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 150
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {p1, v0, v3}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->handleSilenceDeviceStateChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 151
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->access$200(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_a
    :goto_1
    goto :goto_3

    .line 127
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 128
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_c

    goto :goto_2

    :cond_c
    move v2, v3

    .line 129
    :goto_2
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {p1, v0, v2}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->handleSilenceDeviceStateChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 131
    nop

    .line 208
    :goto_3
    return-void
.end method
