.class public Lcom/android/bluetooth/avrcp/MediaPlayerSettings;
.super Ljava/lang/Object;
.source "MediaPlayerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;,
        Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetAppSettingChangeCallback;,
        Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueTextCallback;,
        Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeTextCallback;,
        Lcom/android/bluetooth/avrcp/MediaPlayerSettings$SetPlayerAppSettingCallback;,
        Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueCallback;,
        Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeValuesCallback;,
        Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeCallback;,
        Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsUpdateCallback;,
        Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;,
        Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_EQUALIZER:I = 0x1

.field public static final ATTRIBUTE_NOTSUPPORTED:I = -0x1

.field public static final ATTRIBUTE_REPEATMODE:I = 0x2

.field public static final ATTRIBUTE_SCANMODE:I = 0x4

.field public static final ATTRIBUTE_SHUFFLEMODE:I = 0x3

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CMDGET:Ljava/lang/String; = "get"

.field private static final CMDSET:Ljava/lang/String; = "set"

.field private static final COMMAND:Ljava/lang/String; = "command"

.field private static final DEBUG:Z

.field private static final EXTRA_ATTIBUTE_ID_ARRAY:Ljava/lang/String; = "Attributes"

.field private static final EXTRA_ATTRIBUTE_ID:Ljava/lang/String; = "Attribute"

.field private static final EXTRA_ATTRIBUTE_STRING_ARRAY:Ljava/lang/String; = "AttributeStrings"

.field private static final EXTRA_ATTRIB_VALUE_PAIRS:Ljava/lang/String; = "AttribValuePairs"

.field private static final EXTRA_GET_COMMAND:Ljava/lang/String; = "commandExtra"

.field private static final EXTRA_GET_RESPONSE:Ljava/lang/String; = "Response"

.field private static final EXTRA_VALUE_ID_ARRAY:Ljava/lang/String; = "Values"

.field private static final EXTRA_VALUE_STRING_ARRAY:Ljava/lang/String; = "ValueStrings"

.field private static final GET_ATTRIBUTE_IDS:I = 0x0

.field private static final GET_ATTRIBUTE_TEXT:I = 0x2

.field private static final GET_ATTRIBUTE_VALUES:I = 0x4

.field private static final GET_INVALID:I = 0xff

.field private static final GET_VALUE_IDS:I = 0x1

.field private static final GET_VALUE_TEXT:I = 0x3

.field private static final INTERNAL_ERROR:I = 0x3

.field private static final MESSAGE_PLAYERSETTINGS_TIMEOUT:I = 0x25a

.field private static final NOTIFY_ATTRIBUTE_VALUES:I = 0x5

.field public static final NUMPLAYER_ATTRIBUTE:I = 0x2

.field private static final OPERATION_SUCCESSFUL:I = 0x4

.field private static final PLAYERSETTINGS_REQUEST:Ljava/lang/String; = "org.codeaurora.music.playersettingsrequest"

.field private static final PLAYERSETTINGS_RESPONSE:Ljava/lang/String; = "org.codeaurora.music.playersettingsresponse"

.field private static final SET_ATTRIBUTE_VALUES:I = 0x6

.field private static final TAG:Ljava/lang/String; = "NewAvrcpMediaPlayerSettings"

.field public static final VALUE_INVALID:I = 0x0

.field public static final VALUE_REPEATMODE_ALL:I = 0x3

.field public static final VALUE_REPEATMODE_OFF:I = 0x1

.field public static final VALUE_REPEATMODE_SINGLE:I = 0x2

.field public static final VALUE_SHUFFLEMODE_ALL:I = 0x2

.field public static final VALUE_SHUFFLEMODE_OFF:I = 0x1

.field private static final valTextRepeate:[Ljava/lang/String;

.field private static final valTextRepeateIds:[B

.field private static final valTextShuffle:[Ljava/lang/String;

.field private static final valTextShuffleIds:[B


# instance fields
.field private final UPDATE_ATTRIBUTES:Ljava/lang/String;

.field private final UPDATE_ATTRIB_TEXT:Ljava/lang/String;

.field private final UPDATE_ATTRIB_VALUE:Ljava/lang/String;

.field private final UPDATE_VALUES:Ljava/lang/String;

.field private final UPDATE_VALUE_TEXT:Ljava/lang/String;

.field private def_attrib:[B

.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;

.field private mPendingCmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSetAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

.field private mPlayerSettingsCb:Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;

.field private mPlayerSettingsReceiver:Landroid/content/BroadcastReceiver;

.field private settingValues:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

.field private value_default:[B

.field private value_repmode:[B

.field private value_shufmode:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    nop

    .line 48
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->DEBUG:Z

    .line 84
    const-string v0, "Off"

    const-string v1, "Single track"

    const-string v2, "All tracks"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->valTextRepeate:[Ljava/lang/String;

    .line 86
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->valTextShuffle:[Ljava/lang/String;

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->valTextRepeateIds:[B

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->valTextShuffleIds:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x2t
    .end array-data
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    .line 76
    new-instance v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    .line 89
    new-instance v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->settingValues:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    .line 126
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->def_attrib:[B

    .line 127
    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->value_repmode:[B

    .line 131
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->value_shufmode:[B

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->value_default:[B

    .line 134
    const-string v0, "UpdateSupportedAttributes"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->UPDATE_ATTRIBUTES:Ljava/lang/String;

    .line 135
    const-string v0, "UpdateSupportedValues"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->UPDATE_VALUES:Ljava/lang/String;

    .line 136
    const-string v0, "UpdateCurrentValues"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->UPDATE_ATTRIB_VALUE:Ljava/lang/String;

    .line 137
    const-string v0, "UpdateAttributesText"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->UPDATE_ATTRIB_TEXT:Ljava/lang/String;

    .line 138
    const-string v0, "UpdateValuesText"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->UPDATE_VALUE_TEXT:Ljava/lang/String;

    .line 324
    new-instance v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettingsReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    const-string v0, "NewAvrcpMediaPlayerSettings"

    const-string v1, "Create MediaPlayerSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mLooper:Landroid/os/Looper;

    .line 189
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mContext:Landroid/content/Context;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingCmds:Ljava/util/ArrayList;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingSetAttributes:Ljava/util/ArrayList;

    .line 194
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    const-string v2, "org.codeaurora.music.playersettingsresponse"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettingsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_0

    .line 198
    :catch_0
    move-exception p2

    .line 199
    const-string v1, "Unable to register Avrcp player app settings receiver"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :goto_0
    new-instance p2, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;

    invoke-direct {p2, p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    .line 203
    return-void

    :array_0
    .array-data 1
        0x2t
        0x3t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x2t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)[B
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->value_default:[B

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->settingValues:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;B[B)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->getPlayerAttributeValueRsp(B[B)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->sendPlayerAppSettingsUpdate(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->setPlayerAppSettingRsp(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;I[BI[Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->getPlayerAttributeTextRsp(I[BI[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600()[B
    .locals 1

    .line 45
    sget-object v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->valTextRepeateIds:[B

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->valTextRepeate:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;I[BI[Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->getPlayerAttributeTextValueRsp(I[BI[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900()[B
    .locals 1

    .line 45
    sget-object v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->valTextShuffleIds:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingCmds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->valTextShuffle:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;[B)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->updateLocalPlayerSettings([B)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;[B)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->checkPlayerAttributeResponse([B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)[B
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->def_attrib:[B

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;B[B)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->getListPlayerAttributeRsp(B[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)[B
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->value_repmode:[B

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;B[B)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->getListPlayerAttributeValuesRsp(B[B)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)[B
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->value_shufmode:[B

    return-object p0
.end method

.method private checkPlayerAttributeResponse([B)Z
    .locals 9

    .line 458
    nop

    .line 459
    const-string v0, "checkPlayerAttributeResponse"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_7

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    aget-byte v5, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 462
    aget-byte v3, p1, v1

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v3, v6, :cond_4

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    const/4 v7, 0x3

    if-eq v3, v7, :cond_0

    goto :goto_1

    .line 482
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingSetAttributes:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 483
    aget-byte v2, p1, v4

    if-ne v2, v5, :cond_1

    .line 484
    move v2, v0

    goto :goto_1

    .line 486
    :cond_1
    move v2, v6

    goto :goto_1

    .line 473
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingSetAttributes:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 474
    aget-byte v2, p1, v4

    if-ne v2, v5, :cond_3

    .line 475
    move v2, v0

    goto :goto_1

    .line 477
    :cond_3
    move v2, v6

    goto :goto_1

    .line 464
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingSetAttributes:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 465
    aget-byte v2, p1, v4

    if-ne v2, v5, :cond_5

    .line 466
    move v2, v0

    goto :goto_1

    .line 468
    :cond_5
    move v2, v6

    .line 460
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 494
    :cond_7
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingSetAttributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 495
    return v2
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1

    .line 699
    sget-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 700
    const-string v0, "NewAvrcpMediaPlayerSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    return-void
.end method

.method private getListPlayerAttributeRsp(B[B)V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    .line 516
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeCallback;

    .line 517
    if-eqz v0, :cond_0

    .line 518
    invoke-interface {v0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeCallback;->run(B[B)V

    .line 519
    const-string p1, "getListPlayerAttributeRsp"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 521
    :cond_0
    return-void
.end method

.method private getListPlayerAttributeValuesRsp(B[B)V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    .line 543
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeValuesCallback;

    .line 544
    if-eqz v0, :cond_0

    .line 545
    invoke-interface {v0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeValuesCallback;->run(B[B)V

    .line 546
    const-string p1, "getListPlayerAttributeValuesRsp"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 548
    :cond_0
    return-void
.end method

.method private getPlayerAttributeTextRsp(I[BI[Ljava/lang/String;)V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    .line 642
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeTextCallback;

    .line 643
    if-eqz v0, :cond_0

    .line 644
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeTextCallback;->run(I[BI[Ljava/lang/String;)V

    .line 645
    const-string p1, "getPlayerAttributeTextRsp"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 647
    :cond_0
    return-void
.end method

.method private getPlayerAttributeTextValueRsp(I[BI[Ljava/lang/String;)V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    .line 677
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueTextCallback;

    .line 678
    if-eqz v0, :cond_0

    .line 679
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueTextCallback;->run(I[BI[Ljava/lang/String;)V

    .line 680
    const-string p1, "getPlayerAttributeTextValueRsp"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_0
    const-string p1, "getPlayerAttributeTextValueRsp cb null"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 683
    :goto_0
    return-void
.end method

.method private getPlayerAttributeValueRsp(B[B)V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    .line 578
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueCallback;

    .line 579
    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueCallback;->run(B[B)V

    .line 581
    const-string p1, "getPlayerAttributeValueRsp"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 583
    :cond_0
    return-void
.end method

.method private sendPlayerAppSettingsUpdate(Z)V
    .locals 1

    .line 427
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettingsCb:Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;

    if-nez p1, :cond_0

    .line 428
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->run(Z)V

    .line 431
    const-string p1, "sendPlayerAppSettingsUpdate"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method private setPlayerAppSettingRsp(I)V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    .line 611
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$SetPlayerAppSettingCallback;

    .line 612
    if-eqz v0, :cond_0

    .line 613
    invoke-interface {v0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$SetPlayerAppSettingCallback;->run(I)V

    .line 614
    const-string p1, "setPlayerAppSettingRsp"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 616
    :cond_0
    return-void
.end method

.method private updateLocalPlayerSettings([B)V
    .locals 4

    .line 435
    const-string v0, "updateLocalPlayerSettings"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 438
    aget-byte v1, p1, v0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->settingValues:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    aget-byte v2, p1, v2

    iput-byte v2, v1, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->scan_value:B

    .line 450
    goto :goto_1

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->settingValues:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    aget-byte v2, p1, v2

    iput-byte v2, v1, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->shuffle_value:B

    .line 447
    goto :goto_1

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->settingValues:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    aget-byte v2, p1, v2

    iput-byte v2, v1, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->repeat_value:B

    .line 444
    goto :goto_1

    .line 440
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->settingValues:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    aget-byte v2, p1, v2

    iput-byte v2, v1, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->eq_value:B

    .line 441
    nop

    .line 436
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 455
    :cond_4
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 3

    .line 312
    const-string v0, "cleanup"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettingsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    const-string v1, "NewAvrcpMediaPlayerSettings"

    const-string v2, "Unable to unregister Avrcp receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 320
    return-void
.end method

.method public getAppSettingChange(Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetAppSettingChangeCallback;)V
    .locals 5

    .line 687
    const-string v0, "getAppSettingChange"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 688
    nop

    .line 689
    nop

    .line 690
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 691
    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    .line 692
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->settingValues:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    iget-byte v2, v2, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->repeat_value:B

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 693
    const/4 v2, 0x3

    aput-byte v2, v1, v3

    .line 694
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->settingValues:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    iget-byte v3, v3, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->shuffle_value:B

    aput-byte v3, v1, v2

    .line 695
    invoke-interface {p1, v0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetAppSettingChangeCallback;->run(B[B)V

    .line 696
    return-void
.end method

.method public getListPlayerAttribute(Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeCallback;)V
    .locals 5

    .line 500
    const-string v0, "getListPlayerAttribute"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 501
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    const-string v1, "command"

    const-string v2, "get"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v1, "commandExtra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    const-string v1, "com.android.bbkmusic"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25a

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 512
    return-void
.end method

.method public getListPlayerAttributeValues(BLcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeValuesCallback;)V
    .locals 4

    .line 525
    const-string v0, "getListPlayerAttributeValues"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    const-string v1, "command"

    const-string v2, "get"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const-string v1, "commandExtra"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    const-string v1, "Attribute"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 530
    const-string v1, "com.android.bbkmusic"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    iput-byte p1, v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attr:B

    .line 533
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 534
    const/16 v0, 0x25a

    iput v0, p1, Landroid/os/Message;->what:I

    .line 535
    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 536
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x32

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 539
    return-void
.end method

.method public getPlayerAttributeText(B[BLcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeTextCallback;)V
    .locals 6

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getplayerattribute_text"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "attrIDsNum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 622
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 624
    const-string v2, "command"

    const-string v3, "get"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v2, "commandExtra"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string v2, "Attributes"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 627
    const-string v2, "com.android.bbkmusic"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    new-array v4, p1, [B

    iput-object v4, v2, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    .line 629
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 630
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    aget-byte v5, p2, v2

    aput-byte v5, v4, v2

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 633
    const/16 p1, 0x25a

    iput p1, v1, Landroid/os/Message;->what:I

    .line 634
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 635
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingCmds:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/Integer;

    iget v0, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x32

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 638
    return-void
.end method

.method public getPlayerAttributeTextValue(BB[BLcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueTextCallback;)V
    .locals 6

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getplayervalue_text id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "numValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "value.lenght"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 654
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 656
    const-string v2, "command"

    const-string v3, "get"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    const-string v2, "commandExtra"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    const-string v2, "Attribute"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 659
    const-string v2, "Values"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 660
    const-string v2, "com.android.bbkmusic"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    new-array v4, p2, [B

    iput-object v4, v2, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    .line 662
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 663
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    aget-byte v5, p3, v2

    aput-byte v5, v4, v2

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 665
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.BLUETOOTH"

    invoke-virtual {p2, v0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 666
    const/16 p2, 0x25a

    iput p2, v1, Landroid/os/Message;->what:I

    .line 667
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 668
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 669
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingCmds:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/Integer;

    iget p3, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x32

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 672
    return-void
.end method

.method public getPlayerAttributeValue(B[ILcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueCallback;)V
    .locals 4

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlayerAttributeValue attr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 554
    new-array v0, p1, [B

    .line 555
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 556
    aget v3, p2, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    new-array v2, p1, [B

    iput-object v2, p2, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    .line 559
    nop

    :goto_1
    if-ge v1, p1, :cond_1

    .line 560
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    iget-object p2, p2, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    aget-byte v2, v0, v1

    aput-byte v2, p2, v1

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 562
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    const-string p2, "command"

    const-string v1, "get"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const-string p2, "commandExtra"

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 565
    const-string p2, "Attributes"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 566
    const-string p2, "com.android.bbkmusic"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.BLUETOOTH"

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 568
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 569
    const/16 p2, 0x25a

    iput p2, p1, Landroid/os/Message;->what:I

    .line 570
    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 571
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Integer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x32

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 574
    return-void
.end method

.method init(Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;)V
    .locals 2

    .line 206
    const-string v0, "NewAvrcpMediaPlayerSettings"

    const-string v1, "Initializing MediaPlayerSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPlayerSettingsCb:Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;

    .line 208
    return-void
.end method

.method public setPlayerAppSetting(B[B[BLcom/android/bluetooth/avrcp/MediaPlayerSettings$SetPlayerAppSettingCallback;)V
    .locals 5

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayerAppSetting num "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->d(Ljava/lang/String;)V

    .line 589
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    .line 590
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 591
    aget-byte v2, p2, v1

    aput-byte v2, v0, v1

    .line 592
    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p3, v1

    aput-byte v3, v0, v2

    .line 593
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingSetAttributes:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    aget-byte v1, p2, v1

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    move v1, v2

    goto :goto_0

    .line 595
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    const-string p2, "command"

    const-string p3, "set"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    const-string p2, "AttribValuePairs"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 598
    const-string p2, "com.android.bbkmusic"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->updateLocalPlayerSettings([B)V

    .line 600
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.BLUETOOTH"

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 601
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 602
    const/16 p2, 0x25a

    iput p2, p1, Landroid/os/Message;->what:I

    .line 603
    const/4 p2, 0x6

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 604
    iget-object p3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Integer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object p3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 p3, 0x32

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 607
    return-void
.end method
