.class Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;
.super Landroid/os/Handler;
.source "PhonePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/PhonePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhonePolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/PhonePolicy;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/os/Looper;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    .line 178
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 179
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 234
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$1000(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;)V

    .line 235
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$1100(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;)V

    .line 236
    goto/16 :goto_1

    .line 238
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 239
    nop

    .line 240
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 241
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {v0, p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$1200(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 212
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 213
    nop

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 215
    iget-object v1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$500(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;I)V

    .line 217
    goto/16 :goto_1

    .line 229
    :pswitch_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$800(Lcom/android/bluetooth/btservice/PhonePolicy;)V

    .line 230
    iget-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$900(Lcom/android/bluetooth/btservice/PhonePolicy;)V

    .line 231
    goto/16 :goto_1

    .line 222
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 223
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {v0, p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$600(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;)V

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$700(Lcom/android/bluetooth/btservice/PhonePolicy;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 225
    goto/16 :goto_1

    .line 185
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 186
    nop

    .line 187
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 188
    const-string v1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received ACTION_UUID for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getMaskAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$200(Ljava/lang/String;)V

    .line 190
    if-eqz p1, :cond_1

    .line 191
    array-length v1, p1

    new-array v2, v1, [Landroid/os/ParcelUuid;

    .line 192
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 193
    aget-object v4, p1, v3

    check-cast v4, Landroid/os/ParcelUuid;

    aput-object v4, v2, v3

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$200(Ljava/lang/String;)V

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {p1, v0, v2}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$300(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V

    .line 199
    :cond_1
    goto :goto_1

    .line 202
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 203
    nop

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 205
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 206
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 207
    iget-object v3, p0, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v1, p1, v0, v2}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$400(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;III)V

    .line 209
    nop

    .line 243
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
