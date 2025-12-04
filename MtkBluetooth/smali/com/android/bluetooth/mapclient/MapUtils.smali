.class Lcom/android/bluetooth/mapclient/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# static fields
.field private static final FETCH_MESSAGE_TYPE:Ljava/lang/String; = "persist.bluetooth.pts.mapclient.fetchmessagetype"

.field private static final SEND_MESSAGE_TYPE:Ljava/lang/String; = "persist.bluetooth.pts.mapclient.sendmessagetype"

.field private static sMnsService:Lcom/android/bluetooth/mapclient/MnsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/mapclient/MapUtils;->sMnsService:Lcom/android/bluetooth/mapclient/MnsService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fetchMessageType()B
    .locals 2

    .line 39
    invoke-static {}, Lcom/android/bluetooth/Utils;->isPtsTestMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "persist.bluetooth.pts.mapclient.fetchmessagetype"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 43
    :cond_0
    return v1
.end method

.method static newMnsServiceInstance(Lcom/android/bluetooth/mapclient/MapClientService;)Lcom/android/bluetooth/mapclient/MnsService;
    .locals 1

    .line 36
    sget-object v0, Lcom/android/bluetooth/mapclient/MapUtils;->sMnsService:Lcom/android/bluetooth/mapclient/MnsService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/bluetooth/mapclient/MnsService;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/mapclient/MnsService;-><init>(Lcom/android/bluetooth/mapclient/MapClientService;)V

    :cond_0
    return-object v0
.end method

.method static sendMessageType()Lcom/android/bluetooth/mapclient/Bmessage$Type;
    .locals 2

    .line 48
    invoke-static {}, Lcom/android/bluetooth/Utils;->isPtsTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, -0x1

    const-string v1, "persist.bluetooth.pts.mapclient.sendmessagetype"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 50
    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/bluetooth/mapclient/Bmessage$Type;->values()[Lcom/android/bluetooth/mapclient/Bmessage$Type;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 51
    invoke-static {}, Lcom/android/bluetooth/mapclient/Bmessage$Type;->values()[Lcom/android/bluetooth/mapclient/Bmessage$Type;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0

    .line 54
    :cond_0
    sget-object v0, Lcom/android/bluetooth/mapclient/Bmessage$Type;->MMS:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    return-object v0
.end method

.method static setMnsService(Lcom/android/bluetooth/mapclient/MnsService;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/android/bluetooth/mapclient/MapUtils;->sMnsService:Lcom/android/bluetooth/mapclient/MnsService;

    .line 33
    return-void
.end method
