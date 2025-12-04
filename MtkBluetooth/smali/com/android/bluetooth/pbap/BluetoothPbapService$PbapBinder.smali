.class Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;
.super Landroid/bluetooth/IBluetoothPbap$Stub;
.source "BluetoothPbapService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PbapBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 2

    .line 676
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPbap$Stub;-><init>()V

    .line 677
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 678
    const-string v0, "BluetoothPbapService"

    const-string v1, "PbapBinder()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;->mService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .line 681
    return-void
.end method

.method private getService()Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .locals 3

    .line 666
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 667
    const-string v0, "BluetoothPbapService"

    const-string v2, "not allowed for non-active user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-object v1

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;->mService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;->mService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    return-object v0

    .line 673
    :cond_1
    return-object v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;->mService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .line 686
    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 740
    const-string v0, "BluetoothPbapService"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;->getService()Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v0

    .line 743
    if-nez v0, :cond_0

    .line 744
    return-void

    .line 746
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 747
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 691
    const-string v0, "BluetoothPbapService"

    const-string v1, "getConnectedDevices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;->getService()Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v0

    .line 694
    if-nez v0, :cond_0

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 697
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 714
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;->getService()Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v0

    .line 718
    if-nez v0, :cond_1

    .line 719
    const/4 p1, 0x0

    return p1

    .line 721
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 703
    const-string v0, "BluetoothPbapService"

    const-string v1, "getDevicesMatchingConnectionStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;->getService()Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v0

    .line 706
    if-nez v0, :cond_0

    .line 707
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 709
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 726
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConnectionPolicy for device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;->getService()Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v0

    .line 731
    if-nez v0, :cond_1

    .line 732
    const/4 p1, 0x0

    return p1

    .line 734
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method
