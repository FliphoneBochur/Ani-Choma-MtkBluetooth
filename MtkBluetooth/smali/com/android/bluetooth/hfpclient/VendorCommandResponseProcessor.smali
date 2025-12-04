.class Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;
.super Ljava/lang/Object;
.source "VendorCommandResponseProcessor.java"


# static fields
.field private static final DBG:Z

.field private static final SUPPORTED_VENDOR_AT_COMMANDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_VENDOR_EVENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VendorCommandResponseProcessor"


# instance fields
.field private final mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

.field private final mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    const-string v0, "VendorCommandResponseProcessor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->DBG:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->SUPPORTED_VENDOR_AT_COMMANDS:Ljava/util/Map;

    .line 46
    nop

    .line 48
    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 46
    const-string v2, "+XAPL="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->SUPPORTED_VENDOR_AT_COMMANDS:Ljava/util/Map;

    .line 51
    nop

    .line 49
    const-string v3, "+IPHONEACCEV="

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->SUPPORTED_VENDOR_AT_COMMANDS:Ljava/util/Map;

    .line 54
    nop

    .line 52
    const-string v3, "+APLSIRI?"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->SUPPORTED_VENDOR_AT_COMMANDS:Ljava/util/Map;

    .line 57
    nop

    .line 55
    const-string v3, "+APLEFM"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->SUPPORTED_VENDOR_EVENTS:Ljava/util/Map;

    .line 64
    nop

    .line 66
    nop

    .line 64
    const-string v3, "+APLSIRI:"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->SUPPORTED_VENDOR_EVENTS:Ljava/util/Map;

    .line 69
    nop

    .line 67
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Lcom/android/bluetooth/hfpclient/NativeInterface;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .line 74
    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    .line 75
    return-void
.end method

.method private broadcastVendorSpecificEventIntent(ILjava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastVendorSpecificEventIntent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->logD(Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.VENDOR_SPECIFIC_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.bluetooth.headsetclient.extra.VENDOR_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string p1, "android.bluetooth.headsetclient.extra.VENDOR_EVENT_CODE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string p1, "android.bluetooth.headsetclient.extra.VENDOR_EVENT_FULL_ARGS"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 1

    .line 169
    sget-boolean v0, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->DBG:Z

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "VendorCommandResponseProcessor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public processEvent(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    .line 125
    const-string v0, "VendorCommandResponseProcessor"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 126
    const-string p1, "processVendorEvent device is null"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v1

    .line 131
    :cond_0
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 132
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 134
    const/4 v4, 0x1

    if-lez v2, :cond_1

    .line 135
    add-int/2addr v2, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 136
    :cond_1
    if-lez v3, :cond_2

    .line 137
    add-int/2addr v3, v4

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 139
    :cond_2
    move-object v2, p1

    .line 143
    :goto_0
    const-string v3, "\\s+"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    sget-object v3, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->SUPPORTED_VENDOR_EVENTS:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 146
    if-nez v3, :cond_3

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v1

    .line 150
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v2, p1, p2}, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->broadcastVendorSpecificEventIntent(ILjava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process vendor event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for device"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->logD(Ljava/lang/String;)V

    .line 153
    return v4
.end method

.method public sendCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 11

    .line 78
    const-string v0, "VendorCommandResponseProcessor"

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 79
    const-string p1, "processVendorCommand device is null"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v1

    .line 85
    :cond_0
    const/16 v2, 0x3b

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 86
    if-lez v2, :cond_1

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Do not support ; and more than one command:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1

    .line 93
    :cond_1
    const/16 v2, 0x3d

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 94
    const/16 v3, 0x3f

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 96
    const/4 v4, 0x1

    if-lez v2, :cond_2

    .line 97
    add-int/2addr v2, v4

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 98
    :cond_2
    if-lez v3, :cond_3

    .line 99
    add-int/2addr v3, v4

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 101
    :cond_3
    move-object v2, p2

    .line 105
    :goto_0
    const-string v3, "\\s+"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    sget-object v3, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->SUPPORTED_VENDOR_AT_COMMANDS:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eq v3, v5, :cond_4

    .line 108
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid command "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Cand="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v1

    .line 113
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v6

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/bluetooth/hfpclient/NativeInterface;->sendATCmd([BIIILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 117
    const-string p1, "Failed to send vendor specific at command"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v1

    .line 120
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Send vendor command: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->logD(Ljava/lang/String;)V

    .line 121
    return v4
.end method
