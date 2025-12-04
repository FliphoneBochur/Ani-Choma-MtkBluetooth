.class Lcom/android/bluetooth/sap/SapService$SapBinder;
.super Landroid/bluetooth/IBluetoothSap$Stub;
.source "SapService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SapBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/sap/SapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/sap/SapService;)V
    .locals 2

    .line 931
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSap$Stub;-><init>()V

    .line 932
    const-string v0, "SapService"

    const-string v1, "SapBinder()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBinder;->mService:Lcom/android/bluetooth/sap/SapService;

    .line 934
    return-void
.end method

.method private getService()Lcom/android/bluetooth/sap/SapService;
    .locals 3

    .line 918
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 919
    const-string v0, "SapService"

    const-string v2, "call not allowed for non-active user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-object v1

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService$SapBinder;->mService:Lcom/android/bluetooth/sap/SapService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapService;->access$2200(Lcom/android/bluetooth/sap/SapService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService$SapBinder;->mService:Lcom/android/bluetooth/sap/SapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/sap/SapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService$SapBinder;->mService:Lcom/android/bluetooth/sap/SapService;

    return-object v0

    .line 928
    :cond_1
    return-object v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService$SapBinder;->mService:Lcom/android/bluetooth/sap/SapService;

    .line 939
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 975
    const-string p1, "SapService"

    const-string v0, "connect()"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object p1

    .line 977
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 978
    return v0

    .line 980
    :cond_0
    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 985
    const-string v0, "SapService"

    const-string v1, "disconnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 987
    if-nez v0, :cond_0

    .line 988
    const/4 p1, 0x0

    return p1

    .line 990
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sap/SapService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .line 953
    const-string v0, "SapService"

    const-string v1, "getClient()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v1

    .line 955
    if-nez v1, :cond_0

    .line 956
    const/4 v0, 0x0

    return-object v0

    .line 958
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClient() - returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
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

    .line 995
    const-string v0, "SapService"

    const-string v1, "getConnectedDevices()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 997
    if-nez v0, :cond_0

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 1000
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 1034
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 1035
    if-nez v0, :cond_0

    .line 1036
    const/4 p1, -0x1

    return p1

    .line 1038
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sap/SapService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 1015
    const-string v0, "SapService"

    const-string v1, "getConnectionState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 1017
    if-nez v0, :cond_0

    .line 1018
    const/4 p1, 0x0

    return p1

    .line 1020
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sap/SapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

    .line 1005
    const-string v0, "SapService"

    const-string v1, "getDevicesMatchingConnectionStates()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 1007
    if-nez v0, :cond_0

    .line 1008
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 1010
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sap/SapService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getState()I
    .locals 2

    .line 943
    const-string v0, "SapService"

    const-string v1, "getState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 945
    if-nez v0, :cond_0

    .line 946
    const/4 v0, 0x0

    return v0

    .line 948
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService;->getState()I

    move-result v0

    return v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 964
    const-string v0, "SapService"

    const-string v1, "isConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 966
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 967
    return v1

    .line 969
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 970
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 969
    :goto_0
    return v1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 1025
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 1026
    if-nez v0, :cond_0

    .line 1027
    const/4 p1, 0x0

    return p1

    .line 1029
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/sap/SapService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method
