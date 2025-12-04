.class Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;
.super Landroid/os/Handler;
.source "HidDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HidDeviceServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hid/HidDeviceService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hid/HidDeviceService;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hid/HidDeviceService;Lcom/android/bluetooth/hid/HidDeviceService$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;-><init>(Lcom/android/bluetooth/hid/HidDeviceService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 90
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(): msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 236
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 237
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 238
    const/16 v1, 0xc8

    if-le v0, v1, :cond_10

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_10

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$700(Lcom/android/bluetooth/hid/HidDeviceService;I)Z

    goto/16 :goto_9

    .line 226
    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {p1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 227
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {p1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$200(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_1
    goto :goto_0

    .line 229
    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 232
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {p1, v2}, Lcom/android/bluetooth/hid/HidDeviceService;->access$202(Lcom/android/bluetooth/hid/HidDeviceService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 233
    goto/16 :goto_9

    .line 212
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-byte v0, v0

    .line 213
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 216
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v2}, Lcom/android/bluetooth/hid/HidDeviceService;->access$200(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v1, v2, v0, p1}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :cond_2
    goto/16 :goto_9

    .line 219
    :catch_1
    move-exception p1

    .line 220
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 222
    goto/16 :goto_9

    .line 200
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-byte p1, p1

    .line 203
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$200(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 208
    :cond_3
    goto/16 :goto_9

    .line 206
    :catch_2
    move-exception p1

    .line 207
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 209
    goto/16 :goto_9

    .line 185
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-byte v0, v0

    .line 186
    iget v1, p1, Landroid/os/Message;->arg2:I

    int-to-byte v1, v1

    .line 187
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 190
    :try_start_3
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v2}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 191
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v2}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v3}, Lcom/android/bluetooth/hid/HidDeviceService;->access$200(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1, p1}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 195
    :cond_4
    goto/16 :goto_9

    .line 193
    :catch_3
    move-exception p1

    .line 194
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 196
    goto/16 :goto_9

    .line 171
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-byte v0, v0

    .line 172
    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-byte v2, v2

    .line 173
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 176
    :goto_1
    :try_start_4
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {p1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 177
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {p1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object p1

    iget-object v3, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v3}, Lcom/android/bluetooth/hid/HidDeviceService;->access$200(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 181
    :cond_6
    goto/16 :goto_9

    .line 179
    :catch_4
    move-exception p1

    .line 180
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 182
    goto/16 :goto_9

    .line 150
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 151
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 152
    invoke-static {p1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$500(I)I

    move-result p1

    .line 154
    if-eqz p1, :cond_7

    .line 155
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v1, v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$202(Lcom/android/bluetooth/hid/HidDeviceService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 158
    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v1, v0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$600(Lcom/android/bluetooth/hid/HidDeviceService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 161
    :try_start_5
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 162
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 166
    :cond_8
    goto/16 :goto_9

    .line 164
    :catch_5
    move-exception p1

    .line 165
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 167
    goto/16 :goto_9

    .line 96
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    :cond_9
    move-object v0, v2

    .line 97
    :goto_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_3

    :cond_a
    move p1, v1

    .line 99
    :goto_3
    if-eqz p1, :cond_c

    .line 100
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App registered, set device to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_b
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v3, v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$202(Lcom/android/bluetooth/hid/HidDeviceService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_4

    .line 103
    :cond_c
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v3, v2}, Lcom/android/bluetooth/hid/HidDeviceService;->access$202(Lcom/android/bluetooth/hid/HidDeviceService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 107
    :goto_4
    :try_start_6
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v3}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 108
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v3}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v3

    invoke-interface {v3, v0, p1}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 115
    goto :goto_5

    .line 110
    :cond_d
    goto/16 :goto_9

    .line 112
    :catch_6
    move-exception v0

    .line 113
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 117
    :goto_5
    if-eqz p1, :cond_e

    .line 118
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    new-instance v3, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;

    invoke-direct {v3, v0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;-><init>(Lcom/android/bluetooth/hid/HidDeviceService;)V

    invoke-static {v0, v3}, Lcom/android/bluetooth/hid/HidDeviceService;->access$402(Lcom/android/bluetooth/hid/HidDeviceService;Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;)Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;

    .line 119
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 120
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 122
    :try_start_7
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v3}, Lcom/android/bluetooth/hid/HidDeviceService;->access$400(Lcom/android/bluetooth/hid/HidDeviceService;)Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 123
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IBinder.linkToDeath() ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 126
    goto :goto_6

    .line 124
    :catch_7
    move-exception v0

    .line 125
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 127
    :goto_6
    goto :goto_8

    .line 128
    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$400(Lcom/android/bluetooth/hid/HidDeviceService;)Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 132
    :try_start_8
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v3}, Lcom/android/bluetooth/hid/HidDeviceService;->access$400(Lcom/android/bluetooth/hid/HidDeviceService;)Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 133
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IBinder.unlinkToDeath() ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_8

    .line 136
    goto :goto_7

    .line 134
    :catch_8
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    .line 137
    :goto_7
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$400(Lcom/android/bluetooth/hid/HidDeviceService;)Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;->cleanup()V

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v0, v2}, Lcom/android/bluetooth/hid/HidDeviceService;->access$402(Lcom/android/bluetooth/hid/HidDeviceService;Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;)Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;

    .line 142
    :cond_f
    :goto_8
    if-nez p1, :cond_10

    .line 143
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {p1, v2}, Lcom/android/bluetooth/hid/HidDeviceService;->access$302(Lcom/android/bluetooth/hid/HidDeviceService;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    .line 244
    :cond_10
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
