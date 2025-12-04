.class Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;
.super Ljava/lang/Object;
.source "SdpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sdp/SdpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SdpSearchTracker"
.end annotation


# instance fields
.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/sdp/SdpManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/sdp/SdpManager;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method add(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;)Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method clear()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    return-void
.end method

.method getNext()Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->mList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    return-object v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    .locals 3

    .line 199
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p2}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 201
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    .line 202
    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    .line 203
    invoke-virtual {v2, p2}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    return-object v1

    .line 206
    :cond_0
    goto :goto_0

    .line 207
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method isSearching(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    .locals 3

    .line 211
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    .line 213
    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    .line 214
    invoke-virtual {v2, p2}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->isSearching()Z

    move-result p1

    return p1

    .line 217
    :cond_0
    goto :goto_0

    .line 218
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method remove(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;)Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
