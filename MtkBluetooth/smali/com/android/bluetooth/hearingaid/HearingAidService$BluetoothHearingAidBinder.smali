.class Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;
.super Landroid/bluetooth/IBluetoothHearingAid$Stub;
.source "HearingAidService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hearingaid/HearingAidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothHearingAidBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hearingaid/HearingAidService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hearingaid/HearingAidService;)V
    .locals 0

    .line 871
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHearingAid$Stub;-><init>()V

    .line 872
    iput-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->mService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    .line 873
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hearingaid/HearingAidService;
    .locals 3

    .line 860
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 861
    const-string v0, "HearingAidService"

    const-string v2, "HearingAid call not allowed for non-active user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-object v1

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->mService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->access$200(Lcom/android/bluetooth/hearingaid/HearingAidService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->mService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    return-object v0

    .line 868
    :cond_1
    return-object v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->mService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    .line 878
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 882
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 883
    if-nez v0, :cond_0

    .line 884
    const/4 p1, 0x0

    return p1

    .line 886
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 891
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 892
    if-nez v0, :cond_0

    .line 893
    const/4 p1, 0x0

    return p1

    .line 895
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public getActiveDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 936
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 937
    if-nez v0, :cond_0

    .line 938
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 940
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 900
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 901
    if-nez v0, :cond_0

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 904
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 954
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 955
    if-nez v0, :cond_0

    .line 956
    const/4 p1, -0x1

    return p1

    .line 958
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 918
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 919
    if-nez v0, :cond_0

    .line 920
    const/4 p1, 0x0

    return p1

    .line 922
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 990
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 991
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 992
    return v1

    .line 994
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getCapabilities(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    shr-int/2addr p1, v1

    and-int/2addr p1, v1

    return p1
.end method

.method public getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 981
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 982
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 983
    return v1

    .line 985
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getCapabilities(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    and-int/2addr p1, v1

    return p1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 909
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 910
    if-nez v0, :cond_0

    .line 911
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 913
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J
    .locals 2

    .line 972
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 973
    if-nez v0, :cond_0

    .line 974
    const-wide/16 v0, 0x0

    return-wide v0

    .line 976
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 927
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 928
    if-nez v0, :cond_0

    .line 929
    const/4 p1, 0x0

    return p1

    .line 931
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 945
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 946
    if-nez v0, :cond_0

    .line 947
    const/4 p1, 0x0

    return p1

    .line 949
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hearingaid/HearingAidService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method

.method public setVolume(I)V
    .locals 1

    .line 963
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;->getService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 964
    if-nez v0, :cond_0

    .line 965
    return-void

    .line 967
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->setVolume(I)V

    .line 968
    return-void
.end method
