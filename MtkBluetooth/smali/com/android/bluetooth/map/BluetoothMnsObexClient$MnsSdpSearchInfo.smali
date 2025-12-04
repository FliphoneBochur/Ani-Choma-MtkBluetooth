.class Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;
.super Ljava/lang/Object;
.source "BluetoothMnsObexClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsObexClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MnsSdpSearchInfo"
.end annotation


# instance fields
.field public lastMasId:I

.field public lastNotificationStatus:I

.field private mIsSearchInProgress:Z

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;ZII)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->mIsSearchInProgress:Z

    .line 104
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->lastMasId:I

    .line 105
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->lastNotificationStatus:I

    .line 106
    return-void
.end method


# virtual methods
.method public isSearchInProgress()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->mIsSearchInProgress:Z

    return v0
.end method

.method public setIsSearchInProgress(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->mIsSearchInProgress:Z

    .line 114
    return-void
.end method
