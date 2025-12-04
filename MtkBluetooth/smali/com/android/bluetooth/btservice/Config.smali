.class public Lcom/android/bluetooth/btservice/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/Config$ProfileConfig;
    }
.end annotation


# static fields
.field private static final PROFILE_SERVICES_AND_FLAGS:[Lcom/android/bluetooth/btservice/Config$ProfileConfig;

.field private static final SAP_ENABLE_PROPERTY:Ljava/lang/String; = "ro.vendor.mtk.bt_sap_enable"

.field private static final TAG:Ljava/lang/String; = "AdapterServiceConfig"

.field private static sSupportedProfiles:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 75
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v2, Lcom/android/bluetooth/hfp/HeadsetService;

    const v3, 0x7f030013

    const-wide/16 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/a2dp/A2dpService;

    const v4, 0x7f03000b

    const-wide/16 v5, 0x4

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    const v4, 0x7f03000c

    const-wide/16 v5, 0x800

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/hid/HidHostService;

    const v4, 0x7f030012

    const-wide/16 v5, 0x10

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/pan/PanService;

    const v4, 0x7f030017

    const-wide/16 v5, 0x20

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/gatt/GattService;

    const v4, 0x7f03000f

    const-wide/16 v5, 0x80

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/map/BluetoothMapService;

    const v4, 0x7f030014

    const-wide/16 v5, 0x200

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const v4, 0x7f030010

    const-wide/32 v5, 0x10000

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    const v4, 0x7f03000e

    const-wide/16 v5, 0x2000

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    const v4, 0x7f03000d

    const-wide/16 v5, 0x1000

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/sap/SapService;

    const v4, 0x7f03001a

    const-wide/16 v5, 0x400

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/pbapclient/PbapClientService;

    const v4, 0x7f030019

    const-wide/32 v5, 0x20000

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/mapclient/MapClientService;

    const v4, 0x7f030015

    const-wide/32 v5, 0x40000

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/hid/HidDeviceService;

    const v4, 0x7f030011

    const-wide/32 v5, 0x80000

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppService;

    const v4, 0x7f030016

    const-wide/32 v5, 0x100000

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v4, 0x7f030018

    const-wide/16 v5, 0x40

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    const-class v3, Lcom/android/bluetooth/hearingaid/HearingAidService;

    const v4, 0x1110093

    const-wide/32 v5, 0x200000

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/Config$ProfileConfig;-><init>(Ljava/lang/Class;IJ)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_AND_FLAGS:[Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    .line 114
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->sSupportedProfiles:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getProfileMask(Ljava/lang/Class;)J
    .locals 5

    .line 162
    sget-object v0, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_AND_FLAGS:[Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 163
    iget-object v4, v3, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mClass:Ljava/lang/Class;

    if-ne v4, p0, :cond_0

    .line 164
    iget-wide v0, v3, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mMask:J

    return-wide v0

    .line 162
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find profile bit mask for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdapterServiceConfig"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static getSupportedProfiles()[Ljava/lang/Class;
    .locals 1

    .line 158
    sget-object v0, Lcom/android/bluetooth/btservice/Config;->sSupportedProfiles:[Ljava/lang/Class;

    return-object v0
.end method

.method static getSupportedProfilesBitMask()J
    .locals 7

    .line 172
    nop

    .line 173
    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 174
    invoke-static {v5}, Lcom/android/bluetooth/btservice/Config;->getProfileMask(Ljava/lang/Class;)J

    move-result-wide v5

    or-long/2addr v2, v5

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-wide v2
.end method

.method private static getSystemConfigEnabledProfilesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    const-string v0, "bluetooth_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 216
    const-string v1, "AdapterServiceConfig"

    const-string v2, "Bluetooth binder is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 221
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetoothManager;->getSystemConfigEnabledProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 222
    :catch_0
    move-exception p0

    .line 223
    const/4 p0, 0x0

    return-object p0
.end method

.method static init(Landroid/content/Context;)V
    .locals 15

    .line 117
    if-nez p0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    if-nez v0, :cond_1

    .line 122
    return-void

    .line 124
    :cond_1
    nop

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/btservice/Config;->getSystemConfigEnabledProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_AND_FLAGS:[Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    sget-object v3, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_AND_FLAGS:[Lcom/android/bluetooth/btservice/Config$ProfileConfig;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    .line 129
    iget v8, v7, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mSupported:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 131
    const/4 v9, 0x1

    const-string v10, "AdapterServiceConfig"

    if-nez v8, :cond_2

    iget-object v11, v7, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mClass:Ljava/lang/Class;

    const-class v12, Lcom/android/bluetooth/hearingaid/HearingAidService;

    if-ne v11, v12, :cond_2

    invoke-static {p0}, Lcom/android/bluetooth/btservice/Config;->isHearingAidSettingsEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 132
    const-string v8, "Feature Flag enables support for HearingAidService"

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    move v8, v9

    .line 136
    :cond_2
    if-eqz v1, :cond_3

    iget-object v11, v7, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mClass:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 137
    nop

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mClass:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Feature Flag set to "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " by components configuration"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    :cond_3
    move v9, v8

    :goto_1
    iget-object v8, v7, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mClass:Ljava/lang/Class;

    const-class v11, Lcom/android/bluetooth/sap/SapService;

    const-string v12, "Adding "

    if-ne v8, v11, :cond_4

    iget-wide v13, v7, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mMask:J

    invoke-static {p0, v13, v14}, Lcom/android/bluetooth/btservice/Config;->isProfileDisabled(Landroid/content/Context;J)Z

    move-result v8

    if-nez v8, :cond_4

    .line 144
    const-string v8, "ro.vendor.mtk.bt_sap_enable"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 145
    const-string v8, "SAP Profile is enabled"

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mClass:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v7, v7, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mClass:Ljava/lang/Class;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 149
    :cond_4
    if-eqz v9, :cond_5

    iget-wide v8, v7, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mMask:J

    invoke-static {p0, v8, v9}, Lcom/android/bluetooth/btservice/Config;->isProfileDisabled(Landroid/content/Context;J)Z

    move-result v8

    if-nez v8, :cond_5

    .line 150
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mClass:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v7, v7, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mClass:Ljava/lang/Class;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 154
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    sput-object p0, Lcom/android/bluetooth/btservice/Config;->sSupportedProfiles:[Ljava/lang/Class;

    .line 155
    return-void
.end method

.method private static isHearingAidSettingsEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 196
    if-eqz p0, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "settings_bluetooth_hearing_aid"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 204
    :cond_0
    const-string p0, "sys.fflag.override.settings_bluetooth_hearing_aid"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 210
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isProfileDisabled(Landroid/content/Context;J)Z
    .locals 5

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 181
    nop

    .line 182
    const-string v0, "bluetooth_disabled_profiles"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 184
    and-long p0, v3, p1

    cmp-long p0, p0, v1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
