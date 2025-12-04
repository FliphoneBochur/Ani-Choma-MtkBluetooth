.class public Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;
.super Ljava/lang/Object;
.source "AvrcpCoverArtStorage.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "AvrcpCoverArtStorage"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "AvrcpCoverArtStorage"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1

    .line 238
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->DBG:Z

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "AvrcpCoverArtStorage"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    return-void
.end method

.method private deleteStorageDirectory(Ljava/io/File;)V
    .locals 4

    .line 193
    if-nez p1, :cond_0

    .line 194
    const-string p1, "Cannot delete directory, file is null"

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->error(Ljava/lang/String;)V

    .line 195
    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 198
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 199
    if-nez v0, :cond_2

    .line 200
    return-void

    .line 202
    :cond_2
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->debug(Ljava/lang/String;)V

    .line 204
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->deleteStorageDirectory(Ljava/io/File;)V

    goto :goto_1

    .line 207
    :cond_3
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 202
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 211
    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 1

    .line 244
    const-string v0, "AvrcpCoverArtStorage"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method private getDevicePath(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3

    .line 181
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->getStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 182
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getImagePath(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 187
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->getDevicePath(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 188
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStorageDirectory()Ljava/lang/String;
    .locals 3

    .line 171
    nop

    .line 172
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/coverart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get storage directory, state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->error(Ljava/lang/String;)V

    .line 177
    :goto_0
    return-object v1
.end method


# virtual methods
.method public addImage(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 6

    .line 83
    const-string v0, "\'"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storing image \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' from device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->debug(Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 89
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->getImagePath(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    if-nez v2, :cond_1

    .line 91
    const-string p1, "Cannot store image. Cannot provide a valid path to storage"

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->error(Ljava/lang/String;)V

    .line 92
    return-object v1

    .line 96
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->getDevicePath(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    .line 97
    if-nez v3, :cond_2

    .line 98
    const-string p1, "Cannot store image. Cannot get a valid path to per-device storage"

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->error(Ljava/lang/String;)V

    .line 99
    return-object v1

    .line 101
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 103
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 106
    :cond_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 107
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p3, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 108
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 109
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    nop

    .line 114
    invoke-static {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->getImageUri(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 115
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Image stored at \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->debug(Ljava/lang/String;)V

    .line 117
    return-object p1

    .line 110
    :catch_0
    move-exception p1

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to store \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' to \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->error(Ljava/lang/String;)V

    .line 112
    return-object v1

    .line 85
    :cond_4
    :goto_0
    const-string p1, "Cannot store image. Improper aruguments"

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->debug(Ljava/lang/String;)V

    .line 86
    return-object v1
.end method

.method public clear()V
    .locals 2

    .line 161
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->getStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    const-string v0, "Cannot remove images, cannot get a valid path to storage. Is it mounted?"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->error(Ljava/lang/String;)V

    .line 164
    return-void

    .line 166
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->deleteStorageDirectory(Ljava/io/File;)V

    .line 168
    return-void
.end method

.method public doesImageExist(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 2

    .line 53
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->getImagePath(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    if-nez p1, :cond_1

    return v0

    .line 56
    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    .line 53
    :cond_2
    :goto_0
    return v0
.end method

.method public getImageFile(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 68
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->getImagePath(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    if-nez p1, :cond_1

    return-object v0

    .line 71
    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v0, p2

    :cond_2
    return-object v0

    .line 68
    :cond_3
    :goto_0
    return-object v0
.end method

.method public removeImage(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing image \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' from device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->debug(Ljava/lang/String;)V

    .line 128
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->getImagePath(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    if-nez p1, :cond_1

    .line 131
    const-string p1, "Cannot remove image. Cannot get a valid path to storage"

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->error(Ljava/lang/String;)V

    .line 132
    return-void

    .line 134
    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 136
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Image deleted at \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->debug(Ljava/lang/String;)V

    .line 138
    return-void

    .line 128
    :cond_3
    :goto_0
    return-void
.end method

.method public removeImagesForDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 146
    if-nez p1, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove cover art for device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->debug(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->getDevicePath(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 149
    if-nez p1, :cond_1

    .line 150
    const-string p1, "Cannot remove images for device. Cannot get a valid path to storage"

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->error(Ljava/lang/String;)V

    .line 151
    return-void

    .line 153
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->deleteStorageDirectory(Ljava/io/File;)V

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 215
    nop

    .line 216
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->getStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoverArtStorage:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    Storage Directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    if-nez v0, :cond_0

    .line 219
    return-object v1

    .line 222
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_3

    .line 225
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v0, v5

    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 228
    if-nez v6, :cond_1

    goto :goto_2

    .line 229
    :cond_1
    array-length v7, v6

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 230
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 225
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 234
    :cond_3
    return-object v1
.end method
