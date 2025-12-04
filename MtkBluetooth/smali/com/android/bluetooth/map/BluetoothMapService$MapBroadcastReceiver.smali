.class Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$1;)V
    .locals 0

    .line 1042
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1045
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1046
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    const-string v2, "BluetoothMapService"

    if-eqz v1, :cond_0

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_0
    const-string v1, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1050
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 1051
    const-string p1, "USER_CONFIRM_TIMEOUT ACTION Received."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto/16 :goto_5

    .line 1054
    :cond_2
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    .line 1056
    const-string p1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1059
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received ACTION_CONNECTION_ACCESS_REPLY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "isWaitingAuthorization:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 1061
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto/16 :goto_1

    .line 1068
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$402(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 1069
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1400(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1070
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$900(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    .line 1071
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$600(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 1072
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1500(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    .line 1075
    :cond_5
    const-string p1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 1079
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1602(Lcom/android/bluetooth/map/BluetoothMapService;I)I

    .line 1080
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1081
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    move-result p1

    .line 1083
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 1084
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMessageAccessPermission(ACCESS_ALLOWED) result="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_6
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    sget-object p2, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    .line 1090
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1702(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    goto :goto_0

    .line 1094
    :cond_7
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1602(Lcom/android/bluetooth/map/BluetoothMapService;I)I

    .line 1095
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1096
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    move-result p1

    .line 1098
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz p2, :cond_8

    .line 1099
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMessageAccessPermission(ACCESS_REJECTED) result="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_8
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1800(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 1105
    :goto_0
    goto/16 :goto_5

    .line 1065
    :cond_9
    :goto_1
    return-void

    .line 1105
    :cond_a
    const-string v1, "android.bluetooth.device.action.SDP_RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1106
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz p1, :cond_b

    .line 1107
    const-string p1, "Received ACTION_SDP_RECORD."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_b
    const-string p1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 1110
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_c

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    .line 1113
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1112
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_c
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1116
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string v0, "android.bluetooth.device.extra.SDP_RECORD"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/SdpMnsRecord;

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1902(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/bluetooth/SdpMnsRecord;)Landroid/bluetooth/SdpMnsRecord;

    .line 1117
    const-string p1, "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1118
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz p2, :cond_d

    .line 1119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -> MNS Record:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1900(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/SdpMnsRecord;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -> status: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_d
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$2000(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1700(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 1123
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$2000(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object p2

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1900(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/SdpMnsRecord;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->setMnsRecord(Landroid/bluetooth/SdpMnsRecord;)V

    .line 1125
    :cond_e
    if-eq p1, v0, :cond_f

    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1900(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/SdpMnsRecord;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1126
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    move p2, v4

    :goto_2
    if-ge p2, p1, :cond_f

    .line 1127
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 1128
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1900(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/SdpMnsRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/SdpMnsRecord;->getSupportedFeatures()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setRemoteFeatureMask(I)V

    .line 1126
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1131
    :cond_f
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1700(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1132
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1702(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 1133
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->access$2100(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    .line 1136
    :cond_10
    goto/16 :goto_5

    :cond_11
    const-string v1, "android.btmap.intent.action.SHOW_MAPS_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1137
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz p2, :cond_12

    .line 1138
    const-string p2, "Received ACTION_SHOW_MAPS_SETTINGS."

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_12
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/android/bluetooth/map/BluetoothMapSettings;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1142
    const/high16 v0, 0x14000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1143
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1144
    goto/16 :goto_5

    :cond_13
    const-string v1, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1145
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->getResultCode()I

    move-result v0

    .line 1146
    nop

    .line 1147
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$2200(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1148
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 1149
    if-eqz v1, :cond_14

    .line 1150
    const-string v2, "result"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1152
    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    .line 1155
    :cond_14
    if-nez v4, :cond_19

    .line 1157
    invoke-static {p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionMessageSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_4

    .line 1160
    :cond_15
    const-string p1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 1161
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1162
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1164
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_18

    if-nez p1, :cond_16

    goto :goto_3

    .line 1169
    :cond_16
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz p2, :cond_17

    .line 1170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACL disconnected for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_17
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1175
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$900(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    .line 1176
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$900(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    .line 1165
    :cond_18
    :goto_3
    const-string p1, "Unexpected error!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-void

    .line 1160
    :cond_19
    :goto_4
    nop

    .line 1179
    :cond_1a
    :goto_5
    return-void
.end method
