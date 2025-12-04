.class Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;
.super Ljava/lang/Object;
.source "PlayerApplicationSettings.java"


# static fields
.field static final EQUALIZER_STATUS:B = 0x1t

.field private static final JNI_EQUALIZER_STATUS_OFF:B = 0x1t

.field private static final JNI_EQUALIZER_STATUS_ON:B = 0x2t

.field private static final JNI_REPEAT_STATUS_ALL_TRACK_REPEAT:B = 0x3t

.field private static final JNI_REPEAT_STATUS_GROUP_REPEAT:B = 0x4t

.field private static final JNI_REPEAT_STATUS_OFF:B = 0x1t

.field private static final JNI_REPEAT_STATUS_SINGLE_TRACK_REPEAT:B = 0x2t

.field private static final JNI_SCAN_STATUS_ALL_TRACK_SCAN:B = 0x2t

.field private static final JNI_SCAN_STATUS_GROUP_SCAN:B = 0x3t

.field private static final JNI_SCAN_STATUS_OFF:B = 0x1t

.field private static final JNI_SHUFFLE_STATUS_ALL_TRACK_SHUFFLE:B = 0x2t

.field private static final JNI_SHUFFLE_STATUS_GROUP_SHUFFLE:B = 0x3t

.field private static final JNI_SHUFFLE_STATUS_OFF:B = 0x1t

.field private static final JNI_STATUS_INVALID:B = -0x1t

.field static final REPEAT_STATUS:B = 0x2t

.field static final SCAN_STATUS:B = 0x4t

.field static final SHUFFLE_STATUS:B = 0x3t

.field private static final TAG:Ljava/lang/String; = "PlayerApplicationSettings"


# instance fields
.field private mSettings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSettings:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSupportedValues:Landroid/util/SparseArray;

    return-void
.end method

.method static makeSettings([B)Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;
    .locals 5

    .line 92
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    invoke-direct {v0}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;-><init>()V

    .line 94
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 95
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    .line 97
    iget-object v3, v0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSettings:Landroid/util/SparseArray;

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    .line 98
    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mapAttribIdValtoAvrcpPlayerSetting(BB)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 97
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    move v1, v4

    goto :goto_0

    .line 102
    :cond_0
    goto :goto_1

    .line 100
    :catch_0
    move-exception p0

    .line 101
    const-string p0, "PlayerApplicationSettings"

    const-string v1, "makeSettings JNI_ATTRIButeList index error."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_1
    return-object v0
.end method

.method static makeSupportedSettings([B)Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;
    .locals 8

    .line 71
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    invoke-direct {v0}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;-><init>()V

    .line 73
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 74
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    .line 75
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    .line 76
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 78
    move v6, v1

    :goto_1
    if-ge v6, v3, :cond_0

    .line 80
    add-int/lit8 v7, v4, 0x1

    aget-byte v4, p0, v4

    .line 81
    invoke-static {v2, v4}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mapAttribIdValtoAvrcpPlayerSetting(BB)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 80
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_1

    .line 83
    :cond_0
    iget-object v3, v0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSupportedValues:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    move v2, v4

    goto :goto_0

    .line 87
    :cond_1
    goto :goto_2

    .line 85
    :catch_0
    move-exception p0

    .line 86
    const-string p0, "PlayerApplicationSettings"

    const-string v1, "makeSupportedSettings attributeList index error."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_2
    return-object v0
.end method

.method private static mapAttribIdValtoAvrcpPlayerSetting(BB)I
    .locals 4

    .line 127
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p0, v3, :cond_4

    .line 128
    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 136
    goto :goto_0

    .line 132
    :cond_0
    return v2

    .line 130
    :cond_1
    return v3

    .line 136
    :cond_2
    return v1

    .line 134
    :cond_3
    return v0

    .line 138
    :cond_4
    if-ne p0, v2, :cond_8

    .line 139
    if-eq p1, v1, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 143
    :cond_5
    return v3

    .line 141
    :cond_6
    return v1

    .line 145
    :cond_7
    return v0

    .line 148
    :cond_8
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method static mapAvrcpPlayerSettingstoBTattribVal(II)B
    .locals 3

    .line 153
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p0, v2, :cond_4

    .line 154
    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    .line 162
    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    .line 160
    :cond_1
    return v1

    .line 158
    :cond_2
    return v2

    .line 156
    :cond_3
    return v0

    .line 164
    :cond_4
    if-ne p0, v1, :cond_8

    .line 165
    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 171
    :cond_5
    return v1

    .line 169
    :cond_6
    return v2

    .line 167
    :cond_7
    return v0

    .line 174
    :cond_8
    :goto_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getSetting(I)I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSettings:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSettings:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public setSupport(Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;)V
    .locals 1

    .line 107
    iget-object v0, p1, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSettings:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSettings:Landroid/util/SparseArray;

    .line 108
    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSupportedValues:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSupportedValues:Landroid/util/SparseArray;

    .line 109
    return-void
.end method

.method public supportsSetting(I)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSupportedValues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsSetting(II)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSupportedValues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mSupportedValues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
