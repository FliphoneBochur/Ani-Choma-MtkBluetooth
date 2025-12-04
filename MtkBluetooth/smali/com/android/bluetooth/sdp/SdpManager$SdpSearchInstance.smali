.class Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
.super Ljava/lang/Object;
.source "SdpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sdp/SdpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpSearchInstance"
.end annotation


# instance fields
.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mSearching:Z

.field private mStatus:I

.field private final mUuid:Landroid/os/ParcelUuid;

.field final synthetic this$0:Lcom/android/bluetooth/sdp/SdpManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/sdp/SdpManager;ILandroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mStatus:I

    .line 131
    iput-object p3, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 132
    iput-object p4, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mUuid:Landroid/os/ParcelUuid;

    .line 133
    iput p2, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mStatus:I

    .line 134
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mSearching:Z

    .line 135
    return-void
.end method


# virtual methods
.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mStatus:I

    return v0
.end method

.method public getUuid()Landroid/os/ParcelUuid;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public isSearching()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mSearching:Z

    return v0
.end method

.method public setStatus(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mStatus:I

    .line 151
    return-void
.end method

.method public startSearch()V
    .locals 4

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mSearching:Z

    .line 155
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-static {v0}, Lcom/android/bluetooth/sdp/SdpManager;->access$000(Lcom/android/bluetooth/sdp/SdpManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-static {v1}, Lcom/android/bluetooth/sdp/SdpManager;->access$000(Lcom/android/bluetooth/sdp/SdpManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2af8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 157
    return-void
.end method

.method public stopSearch()V
    .locals 2

    .line 160
    iget-boolean v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mSearching:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-static {v0}, Lcom/android/bluetooth/sdp/SdpManager;->access$000(Lcom/android/bluetooth/sdp/SdpManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mSearching:Z

    .line 164
    return-void
.end method
