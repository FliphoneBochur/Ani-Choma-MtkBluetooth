.class public Lcom/android/bluetooth/pbap/BluetoothPbapConfig;
.super Ljava/lang/Object;
.source "BluetoothPbapConfig.java"


# static fields
.field private static sIncludePhotosInVcard:Z

.field private static sUseProfileForOwnerVcard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sUseProfileForOwnerVcard:Z

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sIncludePhotosInVcard:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static includePhotosInVcard()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sIncludePhotosInVcard:Z

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .line 31
    const-string v0, ""

    const-string v1, "BluetoothPbapConfig"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 34
    const v2, 0x7f03000a

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sUseProfileForOwnerVcard:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :goto_0
    const v2, 0x7f030009

    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sIncludePhotosInVcard:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    goto :goto_1

    .line 40
    :catch_1
    move-exception p0

    .line 41
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_0
    :goto_1
    return-void
.end method

.method public static useProfileForOwnerVcard()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sUseProfileForOwnerVcard:Z

    return v0
.end method
