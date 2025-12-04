.class Lcom/android/bluetooth/a2dp/A2dpCodecConfig;
.super Ljava/lang/Object;
.source "A2dpCodecConfig.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "A2dpCodecConfig"


# instance fields
.field private mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

.field private mA2dpSourceCodecPriorityAac:I

.field private mA2dpSourceCodecPriorityAptx:I

.field private mA2dpSourceCodecPriorityAptxHd:I

.field private mA2dpSourceCodecPriorityLdac:I

.field private mA2dpSourceCodecPrioritySbc:I

.field private mCodecConfigOffloading:[Landroid/bluetooth/BluetoothCodecConfig;

.field private mCodecConfigPriorities:[Landroid/bluetooth/BluetoothCodecConfig;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/a2dp/A2dpNativeInterface;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPrioritySbc:I

    .line 47
    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPriorityAac:I

    .line 49
    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPriorityAptx:I

    .line 51
    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPriorityAptxHd:I

    .line 53
    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPriorityLdac:I

    .line 55
    new-array v0, v0, [Landroid/bluetooth/BluetoothCodecConfig;

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mCodecConfigOffloading:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 58
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    .line 60
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->assignCodecConfigPriorities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mCodecConfigPriorities:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 62
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 63
    if-nez p1, :cond_0

    .line 64
    const-string p1, "A2dpCodecConfig"

    const-string p2, "Can\'t obtain the codec offloading prefernece from null AudioManager"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->getHwOffloadEncodingFormatsSupportedForA2DP()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mCodecConfigOffloading:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 68
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/bluetooth/BluetoothCodecConfig;

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mCodecConfigOffloading:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 69
    return-void
.end method

.method private assignCodecConfigPriorities()[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 32

    .line 178
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 179
    if-nez v2, :cond_0

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    const v0, 0x7f080007

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    move v0, v3

    .line 189
    :goto_0
    const v4, 0xf4240

    const/4 v5, -0x1

    if-lt v0, v5, :cond_1

    if-ge v0, v4, :cond_1

    .line 191
    iput v0, v1, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPrioritySbc:I

    .line 195
    :cond_1
    const v0, 0x7f080003

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    goto :goto_1

    .line 196
    :catch_1
    move-exception v0

    .line 197
    move v0, v3

    .line 199
    :goto_1
    if-lt v0, v5, :cond_2

    if-ge v0, v4, :cond_2

    .line 201
    iput v0, v1, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPriorityAac:I

    .line 205
    :cond_2
    const v0, 0x7f080004

    :try_start_2
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 208
    goto :goto_2

    .line 206
    :catch_2
    move-exception v0

    .line 207
    move v0, v3

    .line 209
    :goto_2
    if-lt v0, v5, :cond_3

    if-ge v0, v4, :cond_3

    .line 211
    iput v0, v1, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPriorityAptx:I

    .line 215
    :cond_3
    const v0, 0x7f080005

    :try_start_3
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 218
    goto :goto_3

    .line 216
    :catch_3
    move-exception v0

    .line 217
    move v0, v3

    .line 219
    :goto_3
    if-lt v0, v5, :cond_4

    if-ge v0, v4, :cond_4

    .line 221
    iput v0, v1, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPriorityAptxHd:I

    .line 225
    :cond_4
    const v0, 0x7f080006

    :try_start_4
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 228
    goto :goto_4

    .line 226
    :catch_4
    move-exception v0

    .line 227
    move v0, v3

    .line 229
    :goto_4
    if-lt v0, v5, :cond_5

    if-ge v0, v4, :cond_5

    .line 231
    iput v0, v1, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPriorityLdac:I

    .line 235
    :cond_5
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/bluetooth/BluetoothCodecConfig;

    .line 237
    new-instance v2, Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v5, 0x0

    iget v6, v1, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPrioritySbc:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v17}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    .line 242
    aput-object v2, v0, v3

    .line 243
    new-instance v2, Landroid/bluetooth/BluetoothCodecConfig;

    const/16 v19, 0x1

    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPriorityAac:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    move-object/from16 v18, v2

    move/from16 v20, v3

    invoke-direct/range {v18 .. v31}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    .line 248
    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 249
    new-instance v2, Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v5, 0x2

    iget v6, v1, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPriorityAptx:I

    move-object v4, v2

    invoke-direct/range {v4 .. v17}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    .line 254
    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 255
    new-instance v2, Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v5, 0x3

    iget v6, v1, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPriorityAptxHd:I

    move-object v4, v2

    invoke-direct/range {v4 .. v17}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    .line 260
    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 261
    new-instance v2, Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v5, 0x4

    iget v6, v1, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpSourceCodecPriorityLdac:I

    move-object v4, v2

    invoke-direct/range {v4 .. v17}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    .line 266
    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 268
    return-object v0
.end method

.method private getPrioitizedCodecType(Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 5

    .line 164
    nop

    .line 165
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 166
    if-nez p1, :cond_0

    .line 167
    move-object p1, v2

    .line 169
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 170
    move-object p1, v2

    .line 165
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    return p1
.end method

.method static synthetic lambda$setCodecConfigPreference$0(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 0

    .line 87
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result p0

    return p0
.end method


# virtual methods
.method codecConfigOffloading()[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mCodecConfigOffloading:[Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method codecConfigPriorities()[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mCodecConfigPriorities:[Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 3

    .line 140
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 141
    const-string p1, "A2dpCodecConfig"

    const-string p2, "disableOptionalCodecs: already using mandatory codec."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->assignCodecConfigPriorities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p2

    .line 146
    if-nez p2, :cond_1

    .line 147
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 151
    aget-object v1, p2, v0

    .line 152
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    const v2, 0xf4240

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothCodecConfig;->setCodecPriority(I)V

    goto :goto_1

    .line 155
    :cond_2
    const/4 v1, 0x0

    aput-object v1, p2, v0

    .line 150
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;[Landroid/bluetooth/BluetoothCodecConfig;)Z

    .line 159
    return-void
.end method

.method enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 2

    .line 117
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableOptionalCodecs: already using optional codec "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    const-string p2, "A2dpCodecConfig"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->assignCodecConfigPriorities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p2

    .line 124
    if-nez p2, :cond_1

    .line 125
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 130
    aget-object v1, p2, v0

    .line 131
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    const/4 v1, 0x0

    aput-object v1, p2, v0

    .line 129
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;[Landroid/bluetooth/BluetoothCodecConfig;)Z

    .line 137
    return-void
.end method

.method setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecStatus;Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 3

    .line 82
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/a2dp/-$$Lambda$A2dpCodecConfig$Z31bjDKQd5WGjL5Ubtje4JP3xHE;->INSTANCE:Lcom/android/bluetooth/a2dp/-$$Lambda$A2dpCodecConfig$Z31bjDKQd5WGjL5Ubtje4JP3xHE;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    const-string v2, "A2dpCodecConfig"

    if-nez v1, :cond_0

    .line 90
    const-string p1, "setCodecConfigPreference: must have mandatory codec before changing."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 93
    :cond_0
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothCodecStatus;->isCodecConfigSelectable(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setCodecConfigPreference: invalid codec "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 100
    :cond_1
    invoke-direct {p0, p3, v0}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->getPrioitizedCodecType(Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v0

    .line 101
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p2

    .line 102
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 103
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 104
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothCodecConfig;->similarCodecFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothCodecConfig;->sameCodecSpecificParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 107
    :cond_2
    const-string p1, "setCodecConfigPreference: codec not changed."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 111
    :cond_3
    const/4 p2, 0x1

    new-array p2, p2, [Landroid/bluetooth/BluetoothCodecConfig;

    .line 112
    const/4 v0, 0x0

    aput-object p3, p2, v0

    .line 113
    iget-object p3, p0, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    invoke-virtual {p3, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;[Landroid/bluetooth/BluetoothCodecConfig;)Z

    .line 114
    return-void
.end method
