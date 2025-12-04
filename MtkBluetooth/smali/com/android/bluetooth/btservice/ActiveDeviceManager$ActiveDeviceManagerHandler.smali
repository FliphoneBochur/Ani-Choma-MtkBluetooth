.class Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;
.super Landroid/os/Handler;
.source "ActiveDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/ActiveDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDeviceManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/os/Looper;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    .line 175
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, " disconnected"

    const-string v2, " connected"

    const-string v3, "android.bluetooth.profile.extra.STATE"

    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v5, 0x2

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string v9, "BluetoothActiveDeviceManager"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 313
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 314
    nop

    .line 315
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 316
    invoke-static {}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage(MESSAGE_HA_ACTION_ACTIVE_DEVICE_CHANGED): device= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {v0, p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$402(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 322
    if-eqz p1, :cond_12

    .line 323
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1, v8}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$500(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 324
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1, v8}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$900(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 297
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 298
    nop

    .line 299
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 300
    invoke-static {}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage(MESSAGE_HFP_ACTION_ACTIVE_DEVICE_CHANGED): device= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$1000(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {v0, v8}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$700(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {v0, p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$1002(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 310
    goto/16 :goto_0

    .line 254
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 255
    nop

    .line 256
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 257
    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 258
    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 259
    if-ne v4, p1, :cond_3

    .line 261
    goto/16 :goto_0

    .line 263
    :cond_3
    const-string v3, "handleMessage(MESSAGE_HFP_ACTION_CONNECTION_STATE_CHANGED): device "

    if-ne p1, v5, :cond_6

    .line 265
    invoke-static {}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$200()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$800(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 271
    goto/16 :goto_0

    .line 273
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$800(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$400(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_12

    .line 276
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$900(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 277
    goto/16 :goto_0

    .line 281
    :cond_6
    if-ne v4, v5, :cond_8

    .line 283
    invoke-static {}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$200()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_7
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$800(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 289
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$1000(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 290
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1, v8}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$900(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 294
    :cond_8
    goto/16 :goto_0

    .line 238
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 239
    nop

    .line 240
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 241
    invoke-static {}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage(MESSAGE_A2DP_ACTION_ACTIVE_DEVICE_CHANGED): device= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_9
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$600(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 246
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {v0, v8}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$700(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 249
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {v0, p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$602(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 251
    goto/16 :goto_0

    .line 195
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 196
    nop

    .line 197
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 198
    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 199
    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 200
    if-ne v4, p1, :cond_b

    .line 202
    goto/16 :goto_0

    .line 204
    :cond_b
    const-string v3, "handleMessage(MESSAGE_A2DP_ACTION_CONNECTION_STATE_CHANGED): device "

    if-ne p1, v5, :cond_e

    .line 206
    invoke-static {}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$200()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_c
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$300(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 212
    goto/16 :goto_0

    .line 214
    :cond_d
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$300(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$400(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_12

    .line 217
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$500(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 218
    goto :goto_0

    .line 222
    :cond_e
    if-ne v4, v5, :cond_10

    .line 224
    invoke-static {}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$200()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_f
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$300(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$600(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 231
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1, v8}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$500(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 235
    :cond_10
    goto :goto_0

    .line 182
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 183
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage(MESSAGE_ADAPTER_ACTION_STATE_CHANGED): newState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/16 v0, 0xc

    if-ne p1, v0, :cond_11

    .line 189
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->access$100(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)V

    .line 192
    :cond_11
    nop

    .line 329
    :cond_12
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
